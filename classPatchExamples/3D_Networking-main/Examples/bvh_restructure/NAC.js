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

    url = "https://raw.githubusercontent.com/CNMAT/antiphon/main/bvh_restructure/assets/example.bvh?token=GHSAT0AAAAAABRPXLWGJ6EQL4ZPDEAUXZUYYQT6GAA";
    
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

    // define the material
    const material_displace = 
    new THREE.ShaderMaterial({
         uniforms: {
          // tExplosion: {
          //   type: "t",
          //   value: THREE.TextureLoader( 'https://antiph.onl/og.png' )
          // },
          time: { // float initialized to 0
            type: "f",
            value: 0.0
          }
        },
        fragmentShader: fragmentShader(),
        vertexShader: vertexShader(),
    } );

    const displace = new THREE.Mesh(
        new THREE.IcosahedronGeometry( 20, 4 ),
        material_displace
    );
    
    displace.position.x = 40;
    displace.position.y = 20;
    displace.position.z = 30;
    
    scene.add(displace);
}

//////////////////////////////////////////////////

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


// Define BVHLoader Class for use
/**
 * Description: reads BVH files and outputs a single THREE.Skeleton and an THREE.AnimationClip
 *
 * Currently only supports bvh files containing a single root.
 *
 * 
 * ______________   _______ ___   .____    ________      _____  ________   
 * \______   \   \ /   /   |   \  |    |   \_____  \    /  _  \ \______ \  
 * |    |  _/\   Y   /    ~    \ |    |    /   |   \  /  /_\  \ |    |  \ 
 * |    |   \ \     /\    Y    / |    |___/    |    \/    |    \|    `   \
 * |______  /  \___/  \___|_  /  |_______ \_______  /\____|__  /_______  /
 *        \/                \/           \/       \/         \/        \/ 
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

vertexShader = function(){
    return `

//
// GLSL textureless classic 3D noise "cnoise",
// with an RSL-style periodic variant "pnoise".
// Author:  Stefan Gustavson (stefan.gustavson@liu.se)
// Version: 2011-10-11
//
// Many thanks to Ian McEwan of Ashima Arts for the
// ideas for permutation and gradient selection.
//
// Copyright (c) 2011 Stefan Gustavson. All rights reserved.
// Distributed under the MIT license. See LICENSE file.
// https://github.com/stegu/webgl-noise
//

vec3 mod289(vec3 x)
{
  return x - floor(x * (1.0 / 289.0)) * 289.0;
}

vec4 mod289(vec4 x)
{
  return x - floor(x * (1.0 / 289.0)) * 289.0;
}

vec4 permute(vec4 x)
{
  return mod289(((x*34.0)+1.0)*x);
}

vec4 taylorInvSqrt(vec4 r)
{
  return 1.79284291400159 - 0.85373472095314 * r;
}

vec3 fade(vec3 t) {
  return t*t*t*(t*(t*6.0-15.0)+10.0);
}

// Classic Perlin noise
float cnoise(vec3 P)
{
  vec3 Pi0 = floor(P); // Integer part for indexing
  vec3 Pi1 = Pi0 + vec3(1.0); // Integer part + 1
  Pi0 = mod289(Pi0);
  Pi1 = mod289(Pi1);
  vec3 Pf0 = fract(P); // Fractional part for interpolation
  vec3 Pf1 = Pf0 - vec3(1.0); // Fractional part - 1.0
  vec4 ix = vec4(Pi0.x, Pi1.x, Pi0.x, Pi1.x);
  vec4 iy = vec4(Pi0.yy, Pi1.yy);
  vec4 iz0 = Pi0.zzzz;
  vec4 iz1 = Pi1.zzzz;

  vec4 ixy = permute(permute(ix) + iy);
  vec4 ixy0 = permute(ixy + iz0);
  vec4 ixy1 = permute(ixy + iz1);

  vec4 gx0 = ixy0 * (1.0 / 7.0);
  vec4 gy0 = fract(floor(gx0) * (1.0 / 7.0)) - 0.5;
  gx0 = fract(gx0);
  vec4 gz0 = vec4(0.5) - abs(gx0) - abs(gy0);
  vec4 sz0 = step(gz0, vec4(0.0));
  gx0 -= sz0 * (step(0.0, gx0) - 0.5);
  gy0 -= sz0 * (step(0.0, gy0) - 0.5);

  vec4 gx1 = ixy1 * (1.0 / 7.0);
  vec4 gy1 = fract(floor(gx1) * (1.0 / 7.0)) - 0.5;
  gx1 = fract(gx1);
  vec4 gz1 = vec4(0.5) - abs(gx1) - abs(gy1);
  vec4 sz1 = step(gz1, vec4(0.0));
  gx1 -= sz1 * (step(0.0, gx1) - 0.5);
  gy1 -= sz1 * (step(0.0, gy1) - 0.5);

  vec3 g000 = vec3(gx0.x,gy0.x,gz0.x);
  vec3 g100 = vec3(gx0.y,gy0.y,gz0.y);
  vec3 g010 = vec3(gx0.z,gy0.z,gz0.z);
  vec3 g110 = vec3(gx0.w,gy0.w,gz0.w);
  vec3 g001 = vec3(gx1.x,gy1.x,gz1.x);
  vec3 g101 = vec3(gx1.y,gy1.y,gz1.y);
  vec3 g011 = vec3(gx1.z,gy1.z,gz1.z);
  vec3 g111 = vec3(gx1.w,gy1.w,gz1.w);

  vec4 norm0 = taylorInvSqrt(vec4(dot(g000, g000), dot(g010, g010), dot(g100, g100), dot(g110, g110)));
  g000 *= norm0.x;
  g010 *= norm0.y;
  g100 *= norm0.z;
  g110 *= norm0.w;
  vec4 norm1 = taylorInvSqrt(vec4(dot(g001, g001), dot(g011, g011), dot(g101, g101), dot(g111, g111)));
  g001 *= norm1.x;
  g011 *= norm1.y;
  g101 *= norm1.z;
  g111 *= norm1.w;

  float n000 = dot(g000, Pf0);
  float n100 = dot(g100, vec3(Pf1.x, Pf0.yz));
  float n010 = dot(g010, vec3(Pf0.x, Pf1.y, Pf0.z));
  float n110 = dot(g110, vec3(Pf1.xy, Pf0.z));
  float n001 = dot(g001, vec3(Pf0.xy, Pf1.z));
  float n101 = dot(g101, vec3(Pf1.x, Pf0.y, Pf1.z));
  float n011 = dot(g011, vec3(Pf0.x, Pf1.yz));
  float n111 = dot(g111, Pf1);

  vec3 fade_xyz = fade(Pf0);
  vec4 n_z = mix(vec4(n000, n100, n010, n110), vec4(n001, n101, n011, n111), fade_xyz.z);
  vec2 n_yz = mix(n_z.xy, n_z.zw, fade_xyz.y);
  float n_xyz = mix(n_yz.x, n_yz.y, fade_xyz.x); 
  return 2.2 * n_xyz;
}

// Classic Perlin noise, periodic variant
float pnoise(vec3 P, vec3 rep)
{
  vec3 Pi0 = mod(floor(P), rep); // Integer part, modulo period
  vec3 Pi1 = mod(Pi0 + vec3(1.0), rep); // Integer part + 1, mod period
  Pi0 = mod289(Pi0);
  Pi1 = mod289(Pi1);
  vec3 Pf0 = fract(P); // Fractional part for interpolation
  vec3 Pf1 = Pf0 - vec3(1.0); // Fractional part - 1.0
  vec4 ix = vec4(Pi0.x, Pi1.x, Pi0.x, Pi1.x);
  vec4 iy = vec4(Pi0.yy, Pi1.yy);
  vec4 iz0 = Pi0.zzzz;
  vec4 iz1 = Pi1.zzzz;

  vec4 ixy = permute(permute(ix) + iy);
  vec4 ixy0 = permute(ixy + iz0);
  vec4 ixy1 = permute(ixy + iz1);

  vec4 gx0 = ixy0 * (1.0 / 7.0);
  vec4 gy0 = fract(floor(gx0) * (1.0 / 7.0)) - 0.5;
  gx0 = fract(gx0);
  vec4 gz0 = vec4(0.5) - abs(gx0) - abs(gy0);
  vec4 sz0 = step(gz0, vec4(0.0));
  gx0 -= sz0 * (step(0.0, gx0) - 0.5);
  gy0 -= sz0 * (step(0.0, gy0) - 0.5);

  vec4 gx1 = ixy1 * (1.0 / 7.0);
  vec4 gy1 = fract(floor(gx1) * (1.0 / 7.0)) - 0.5;
  gx1 = fract(gx1);
  vec4 gz1 = vec4(0.5) - abs(gx1) - abs(gy1);
  vec4 sz1 = step(gz1, vec4(0.0));
  gx1 -= sz1 * (step(0.0, gx1) - 0.5);
  gy1 -= sz1 * (step(0.0, gy1) - 0.5);

  vec3 g000 = vec3(gx0.x,gy0.x,gz0.x);
  vec3 g100 = vec3(gx0.y,gy0.y,gz0.y);
  vec3 g010 = vec3(gx0.z,gy0.z,gz0.z);
  vec3 g110 = vec3(gx0.w,gy0.w,gz0.w);
  vec3 g001 = vec3(gx1.x,gy1.x,gz1.x);
  vec3 g101 = vec3(gx1.y,gy1.y,gz1.y);
  vec3 g011 = vec3(gx1.z,gy1.z,gz1.z);
  vec3 g111 = vec3(gx1.w,gy1.w,gz1.w);

  vec4 norm0 = taylorInvSqrt(vec4(dot(g000, g000), dot(g010, g010), dot(g100, g100), dot(g110, g110)));
  g000 *= norm0.x;
  g010 *= norm0.y;
  g100 *= norm0.z;
  g110 *= norm0.w;
  vec4 norm1 = taylorInvSqrt(vec4(dot(g001, g001), dot(g011, g011), dot(g101, g101), dot(g111, g111)));
  g001 *= norm1.x;
  g011 *= norm1.y;
  g101 *= norm1.z;
  g111 *= norm1.w;

  float n000 = dot(g000, Pf0);
  float n100 = dot(g100, vec3(Pf1.x, Pf0.yz));
  float n010 = dot(g010, vec3(Pf0.x, Pf1.y, Pf0.z));
  float n110 = dot(g110, vec3(Pf1.xy, Pf0.z));
  float n001 = dot(g001, vec3(Pf0.xy, Pf1.z));
  float n101 = dot(g101, vec3(Pf1.x, Pf0.y, Pf1.z));
  float n011 = dot(g011, vec3(Pf0.x, Pf1.yz));
  float n111 = dot(g111, Pf1);

  vec3 fade_xyz = fade(Pf0);
  vec4 n_z = mix(vec4(n000, n100, n010, n110), vec4(n001, n101, n011, n111), fade_xyz.z);
  vec2 n_yz = mix(n_z.xy, n_z.zw, fade_xyz.y);
  float n_xyz = mix(n_yz.x, n_yz.y, fade_xyz.x); 
  return 2.2 * n_xyz;
}
//////////////////////////////////
////// End Perlin ////////////////

////// Vert Shade ////////////////
//////////////////////////////////
        varying vec2 vUv;
        varying float noise;
        uniform float time;

        float turbulence( vec3 p ) {

          float w = 100.0;
          float t = -.5;

          for (float f = 1.0 ; f <= 10.0 ; f++ ){
            float power = pow( 2.0, f );
            t += abs( pnoise( vec3( power * p ), vec3( 10.0, 10.0, 10.0 ) ) / power );
          }

          return t;

        }

        void main() {

        vUv = uv;

          // add time to the noise parameters so it's animated
          noise = 10.0 *  -.10 * turbulence( .5 * normal + time );
          float b = 5.0 * pnoise( 0.05 * position + vec3( 2.0 * time ), vec3( 100.0 ) );
          float displacement = - noise + b;

          vec3 newPosition = position + normal * displacement;
          gl_Position = projectionMatrix * modelViewMatrix * vec4( newPosition, 1.0 );

        }
    `
};

// fragment Shader
fragmentShader = function(){
    return `

        varying vec2 vUv;
        varying float noise;
        uniform sampler2D tExplosion;

        float random( vec3 scale, float seed ){
          return fract( sin( dot( gl_FragCoord.xyz + seed, scale ) ) * 43758.5453 + seed ) ;
        }

        void main() {

          // get a random offset
          float r = .01 * random( vec3( 12.9898, 78.233, 151.7182 ), 0.0 );
          // lookup vertically in the texture, using noise and offset
          // to get the right RGB colour
          vec2 tPos = vec2( 0, 1.3 * noise + r );
          vec4 color = texture2D( tExplosion, tPos );

          gl_FragColor = vec4( color.rgb, 1.0 );

        }

    `
};