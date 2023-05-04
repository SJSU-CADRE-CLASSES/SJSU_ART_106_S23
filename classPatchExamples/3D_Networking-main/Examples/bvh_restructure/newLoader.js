// Define BVHLoader Class for use
/**
 * Description: reads BVH files and outputs a single THREE.Skeleton and an THREE.AnimationClip
 *
 * Currently only supports bvh files containing a single root.
 *
 */

 class BVHLoader extends THREE.Loader {

    constructor(manager) {

        super(manager);

        this.animateBonePositions = true;
        this.animateBoneRotations = true;
        this.bones = null;
        this.frame = 0;
        this.framerate = 0;

    }

    load(url, onLoad, onProgress, onError) {

        const scope = this;

        const loader = new THREE.FileLoader(scope.manager);
        loader.setPath(scope.path);
        loader.setRequestHeader(scope.requestHeader);
        loader.setWithCredentials(scope.withCredentials);
        loader.load(url, function (text) {

            try {

                onLoad(scope.parse(text));

            } catch (e) {

                if (onError) {

                    onError(e);

                } else {

                    console.error(e);

                }

                scope.manager.itemError(url);

            }

        }, onProgress, onError);

    }

    loadLine(text, onLoad, onProgress, onError) {

        const scope = this;
        try {
            onLoad(scope.loadFrame(text));
        } catch (e) {
            if (onError) {
                onError(e);
            } else {
                console.error(e);
                }
                scope.manager.itemError(text);
        }

    }

    parse(text) {

        /*
            reads a string array (lines) from a BVH file
            and outputs a skeleton structure including motion data

            returns thee root node:
            { name: '', channels: [], children: [] }
        */
        function readBvh(lines) {

            // read model structure

            if (nextLine(lines) !== 'HIERARCHY') {

                console.error('THREE.BVHLoader: HIERARCHY expected.');

            }

            const list = []; // collects flat array of all bones
            const root = readNode(lines, nextLine(lines), list);

            // read motion data

            if (nextLine(lines) !== 'MOTION') {

                console.error('THREE.BVHLoader: MOTION expected.');

            }

            // number of frames

            let tokens = nextLine(lines).split(/[\s]+/);
            const numFrames = parseInt(tokens[1]);

            if (isNaN(numFrames)) {

                console.error('THREE.BVHLoader: Failed to read number of frames.');

            }

            // frame time

            tokens = nextLine(lines).split(/[\s]+/);
            const frameTime = parseFloat(tokens[2]);

            if (isNaN(frameTime)) {

                console.error('THREE.BVHLoader: Failed to read frame time.');

            }

            // read frame data line by line
            scope.framerate = frameTime;
            //scope.framerate = 2;

            for (let i = 0; i < numFrames; i++) {

                tokens = nextLine(lines).split(/[\s]+/);
                readFrameData(tokens, i * frameTime, root);

            }

            return list;

        }

        /*
            Recursively reads data from a single frame into the bone hierarchy.
            The passed bone hierarchy has to be structured in the same order as the BVH file.
            keyframe data is stored in bone.frames.

            - data: splitted string array (frame values), values are shift()ed so
            this should be empty after parsing the whole hierarchy.
            - frameTime: playback time for this keyframe.
            - bone: the bone to read frame data from.
        */
        function readFrameData(data, frameTime, bone) {

            // end sites have no motion data

            if (bone.type === 'ENDSITE') return;

            // add keyframe

            const keyframe = {
                time: frameTime,
                position: new THREE.Vector3(),
                rotation: new THREE.Quaternion()
            };

            bone.frames.push(keyframe);

            const quat = new THREE.Quaternion();

            const vx = new THREE.Vector3(1, 0, 0);
            const vy = new THREE.Vector3(0, 1, 0);
            const vz = new THREE.Vector3(0, 0, 1);

            // parse values for each channel in node

            for (let i = 0; i < bone.channels.length; i++) {

                switch (bone.channels[i]) {

                    case 'Xposition':
                        keyframe.position.x = parseFloat(data.shift().trim());
                        break;
                    case 'Yposition':
                        keyframe.position.y = parseFloat(data.shift().trim());
                        break;
                    case 'Zposition':
                        keyframe.position.z = parseFloat(data.shift().trim());
                        break;
                    case 'Xrotation':
                        quat.setFromAxisAngle(vx, parseFloat(data.shift().trim()) * Math.PI / 180);
                        keyframe.rotation.multiply(quat);
                        break;
                    case 'Yrotation':
                        quat.setFromAxisAngle(vy, parseFloat(data.shift().trim()) * Math.PI / 180);
                        keyframe.rotation.multiply(quat);
                        break;
                    case 'Zrotation':
                        quat.setFromAxisAngle(vz, parseFloat(data.shift().trim()) * Math.PI / 180);
                        keyframe.rotation.multiply(quat);
                        break;
                    default:
                        console.warn('THREE.BVHLoader: Invalid channel type.');

                }

            }

            // parse child nodes

            for (let i = 0; i < bone.children.length; i++) {

                readFrameData(data, frameTime, bone.children[i]);

            }

        }

        /*
         Recursively parses the HIERACHY section of the BVH file

         - lines: all lines of the file. lines are consumed as we go along.
         - firstline: line containing the node type and name e.g. 'JOINT hip'
         - list: collects a flat list of nodes

         returns: a BVH node including children
        */
        function readNode(lines, firstline, list) {

            const node = { name: '', type: '', frames: [] };
            list.push(node);

            // parse node type and name

            let tokens = firstline.split(/[\s]+/);

            if (tokens[0].toUpperCase() === 'END' && tokens[1].toUpperCase() === 'SITE') {

                node.type = 'ENDSITE';
                node.name = 'ENDSITE'; // bvh end sites have no name

            } else {

                node.name = tokens[1];
                node.type = tokens[0].toUpperCase();

            }

            if (nextLine(lines) !== '{') {

                console.error('THREE.BVHLoader: Expected opening { after type & name');

            }

            // parse OFFSET

            tokens = nextLine(lines).split(/[\s]+/);

            if (tokens[0] !== 'OFFSET') {

                console.error('THREE.BVHLoader: Expected OFFSET but got: ' + tokens[0]);

            }

            if (tokens.length !== 4) {

                console.error('THREE.BVHLoader: Invalid number of values for OFFSET.');

            }

            const offset = new THREE.Vector3(
                parseFloat(tokens[1]),
                parseFloat(tokens[2]),
                parseFloat(tokens[3])
            );

            if (isNaN(offset.x) || isNaN(offset.y) || isNaN(offset.z)) {

                console.error('THREE.BVHLoader: Invalid values of OFFSET.');

            }

            node.offset = offset;

            // parse CHANNELS definitions

            if (node.type !== 'ENDSITE') {

                tokens = nextLine(lines).split(/[\s]+/);

                if (tokens[0] !== 'CHANNELS') {

                    console.error('THREE.BVHLoader: Expected CHANNELS definition.');

                }

                const numChannels = parseInt(tokens[1]);
                node.channels = tokens.splice(2, numChannels);
                node.children = [];

            }

            // read children

            while (true) {

                const line = nextLine(lines);

                if (line === '}') {

                    return node;

                } else {

                    node.children.push(readNode(lines, line, list));

                }

            }

        }

        /*
            recursively converts the internal bvh node structure to a THREE.Bone hierarchy

            source: the bvh root node
            list: pass an empty array, collects a flat list of all converted THREE.Bones

            returns the root THREE.Bone
        */
        function toTHREEBone(source, list) {

            const bone = new THREE.Bone();
            list.push(bone);

            bone.position.add(source.offset);
            bone.name = source.name;

            if (source.type !== 'ENDSITE') {

                for (let i = 0; i < source.children.length; i++) {

                    bone.add(toTHREEBone(source.children[i], list));

                }

            }

            return bone;

        }

        /*
            builds a THREE.AnimationClip from the keyframe data saved in each bone.

            bone: bvh root node

            returns: a THREE.AnimationClip containing position and quaternion tracks
        */
        function toTHREEAnimation(bones) {

            const tracks = [];

            // create a position and quaternion animation track for each node

            for (let i = 0; i < bones.length; i++) {

                const bone = bones[i];

                if (bone.type === 'ENDSITE')
                    continue;

                // track data

                const times = [];
                const positions = [];
                const rotations = [];

                for (let j = 0; j < bone.frames.length; j++) {

                    const frame = bone.frames[j];

                    times.push(frame.time);

                    // the animation system animates the position property,
                    // so we have to add the joint offset to all values

                    positions.push(frame.position.x + bone.offset.x);
                    positions.push(frame.position.y + bone.offset.y);
                    positions.push(frame.position.z + bone.offset.z);

                    rotations.push(frame.rotation.x);
                    rotations.push(frame.rotation.y);
                    rotations.push(frame.rotation.z);
                    rotations.push(frame.rotation.w);

                }

                if (scope.animateBonePositions) {

                    tracks.push(new THREE.VectorKeyframeTrack('.bones[' + bone.name + '].position', times, positions));

                }

                if (scope.animateBoneRotations) {

                    tracks.push(new THREE.QuaternionKeyframeTrack('.bones[' + bone.name + '].quaternion', times, rotations));

                }

            }

            return new THREE.AnimationClip('animation', - 1, tracks);

        }

        /*
            returns the next non-empty line in lines
        */
        function nextLine(lines) {

            let line;
            // skip empty lines
            while ((line = lines.shift().trim()).length === 0) { }

            return line;

        }

        const scope = this;

        const lines = text.split(/[\r\n]+/g);

        const bones = readBvh(lines);
        scope.bones = bones;
        console.log("Storing Data", scope.bones);

        const threeBones = [];
        toTHREEBone(bones[0], threeBones);

        const threeClip = toTHREEAnimation(bones);

        return {
            skeleton: new THREE.Skeleton(threeBones),
            clip: threeClip
        };

    }

    /** Does everything but only 1 line 
	 * 
	 * @param {String} data 
	 * @returns same as parse method
	 */
    loadFrame(data) {

        /* COPIED FUNCTION */
        function toTHREEBone(source, list) {

            const bone = new THREE.Bone();
            list.push(bone);

            bone.position.add(source.offset);
            bone.name = source.name;

            if (source.type !== 'ENDSITE') {

                for (let i = 0; i < source.children.length; i++) {

                    bone.add(toTHREEBone(source.children[i], list));

                }

            }

            return bone;

        }

        /* COPIED FUNCTION */
        function toTHREEAnimation(bones) {

            const tracks = [];

            // create a position and quaternion animation track for each node

            for (let i = 0; i < bones.length; i++) {

                const bone = bones[i];

                if (bone.type === 'ENDSITE')
                    continue;

                // track data

                const times = [];
                const positions = [];
                const rotations = [];

                for (let j = 0; j < bone.frames.length; j++) {

                    const frame = bone.frames[j];

                    times.push(frame.time);

                    // the animation system animates the position property,
                    // so we have to add the joint offset to all values

                    positions.push(frame.position.x + bone.offset.x);
                    positions.push(frame.position.y + bone.offset.y);
                    positions.push(frame.position.z + bone.offset.z);

                    rotations.push(frame.rotation.x);
                    rotations.push(frame.rotation.y);
                    rotations.push(frame.rotation.z);
                    rotations.push(frame.rotation.w);

                }

                if (scope.animateBonePositions) {

                    tracks.push(new THREE.VectorKeyframeTrack('.bones[' + bone.name + '].position', times, positions));

                }

                if (scope.animateBoneRotations) {

                    tracks.push(new THREE.QuaternionKeyframeTrack('.bones[' + bone.name + '].quaternion', times, rotations));

                }

            }

            return new THREE.AnimationClip('animation', - 1, tracks);

        }

        /* COPIED FUNCION */
        function readFrameData(data, frameTime, bone) {

            // end sites have no motion data

            if (bone.type === 'ENDSITE') return;

            // add keyframe

            const keyframe = {
                time: frameTime,
                position: new THREE.Vector3(),
                rotation: new THREE.Quaternion()
            };

            bone.frames.push(keyframe);

            const quat = new THREE.Quaternion();

            const vx = new THREE.Vector3(1, 0, 0);
            const vy = new THREE.Vector3(0, 1, 0);
            const vz = new THREE.Vector3(0, 0, 1);

            // parse values for each channel in node

            for (let i = 0; i < bone.channels.length; i++) {

                switch (bone.channels[i]) {

                    case 'Xposition':
                        keyframe.position.x = parseFloat(data.shift().trim());
                        break;
                    case 'Yposition':
                        keyframe.position.y = parseFloat(data.shift().trim());
                        break;
                    case 'Zposition':
                        keyframe.position.z = parseFloat(data.shift().trim());
                        break;
                    case 'Xrotation':
                        quat.setFromAxisAngle(vx, parseFloat(data.shift().trim()) * Math.PI / 180);
                        keyframe.rotation.multiply(quat);
                        break;
                    case 'Yrotation':
                        quat.setFromAxisAngle(vy, parseFloat(data.shift().trim()) * Math.PI / 180);
                        keyframe.rotation.multiply(quat);
                        break;
                    case 'Zrotation':
                        quat.setFromAxisAngle(vz, parseFloat(data.shift().trim()) * Math.PI / 180);
                        keyframe.rotation.multiply(quat);
                        break;
                    default:
                        console.warn('THREE.BVHLoader: Invalid channel type.');

                }

            }

            // parse child nodes

            for (let i = 0; i < bone.children.length; i++) {

                readFrameData(data, frameTime, bone.children[i]);

            }

        }
        
        var lines = data.split(/\s/);
        console.log(lines);
        const scope = this;
        const threeBones = [];
        var bones = scope.bones;
        console.log("Querying data");
        console.log(scope.bones);
        for (let i=0; i < bones.length; i ++) {
            //bones[i].frames.length = 1;
            bones[i].frames = [bones[i].frames[bones[i].frames.length - 1]];
        }

        scope.frame ++;
        readFrameData(lines, scope.frame*scope.framerate, bones[0])

        toTHREEBone( bones[ 0 ], threeBones );
		const threeClip = toTHREEAnimation( bones );

        scope.bones = bones;
		return {
			skeleton: new THREE.Skeleton( threeBones ),
			clip: threeClip
		};
    }
}
// END BVH LOADER CLASS

var camera, controls, scene, renderer;
var clock;
var mixer, skeletonHelper;
var loader;
var cube;
//var trueSettings;
var viewSet = false;
var currClip, newClip;
var currAction, nextAction;

var ws;

var currentState = "-14.845151 84.199080 4.156714 -151.153620 -11.385691 -10.512010 -2.486185 8.817079 -0.455627 -0.163071 0.586280 -0.017436 -0.255968 0.919925 -0.028106 -2.190231 7.770838 -0.369349 -7.308262 18.721482 -2.151569 -12.707615 -1.318276 -1.588046 -7.667616 0.497604 -0.486779 -60.457387 -0.716053 64.122591 144.130127 -23.786668 5.695924 -14.870122 -0.660656 40.058203 10.359555 1.652799 3.324008 44.718377 -18.145564 -72.731960 -121.192262 -33.114160 -13.995021 9.958959 8.171343 -31.420390 2.997528 3.548735 -14.754083 -3.250016 13.228140 -0.484245 11.665594 8.121135 14.236665 1.539303 5.715014 4.463652 -1.478594 5.894235 7.177853 -3.100214 25.646788 -0.353634 7.073994 -20.877663 1.557482 -0.012675 -0.060017 0.033566";
var wsInitted = false;

function init() {
    // initialize 
    loader = new BVHLoader();

    ws = new WebSocket('wss://etoi.li/ws');
    ws.onopen = function () {
        console.log('WS Opened');
        wsInitted = true;
    }
    ws.onmessage = function (msg) {
        let p = msg.data.text();
        p.then(function (data) {
            if (data !== 'no data') {
                currentState = data;
                console.log('currentState', currentState);
            }
            else {
                console.log('currentState is preserved; no data in queue');
            }
        });
    }

    url = "https://raw.githubusercontent.com/CNMAT/3D_Networking/main/Examples/bvh_restructure/production/bvh-skeleton-1.txt?token=GHSAT0AAAAAABRPXLWGRUAR537SSNEYJG2GYSR7VAA";
    
    // use this just for generating skeleton
    loader.load(url, function ( result ) {
        skeletonHelper = new THREE.SkeletonHelper( result.skeleton.bones[ 0 ] );
        skeletonHelper.skeleton = result.skeleton; // allow animation mixer to bind to THREE.SkeletonHelper directly

        const boneContainer = new THREE.Group();
        boneContainer.add( result.skeleton.bones[ 0 ] );

        scene.add( skeletonHelper );
        scene.add( boneContainer );

        // play animation
        mixer = new THREE.AnimationMixer( skeletonHelper );
        currClip = result.clip;
        currAction = mixer.clipAction(currClip);
        currAction.setEffectiveWeight(1.0).play();
    } );
    const geometry = new THREE.BoxGeometry();
    const material = new THREE.MeshBasicMaterial( { color: 0x00ff00 } );
    cube = new THREE.Mesh( geometry, material );
    cube.position.y += 6;
    scene.add( cube );
}

room.afterInit = init;


//Defensive for testing when we aren't in the room environment
if (!window.room) {
    window.room = {}
}

//Used to install handlers on room entrance and initialize global vars
room.beforeInit = function() {
    console.log('beforeInit start');
    clock = new THREE.Clock();
    console.log('clock initialized');
    
}

room.onFrame = function () {
    //animate

    if(!viewSet) {
        camera.far = 1000;
        camera.fov = 90;
        scene.fog.far = 1000;
        viewSet = true;
    }

    if (wsInitted) {
        ws.send('get');
    }

    if(clock.elapsedTime > 5) {
        loader.loadLine(currentState, function(result) {
            newClip = result.clip;
         });
         newAction = mixer.clipAction(newClip);
     
         currAction.stop();
         newAction.play();
         currClip = newClip;
         currAction = newAction;

    }
    
    const delta = clock.getDelta();

    if ( mixer ) mixer.update( delta );

    cube.rotation.x += 0.01;
    cube.rotation.y += 0.01;

    renderer.render( scene, camera );

};