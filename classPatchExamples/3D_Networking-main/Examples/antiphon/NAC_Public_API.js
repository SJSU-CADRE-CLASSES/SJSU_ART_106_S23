//                __  .__       .__                      .__   
// _____    _____/  |_|__|_____ |  |__       ____   ____ |  |  
// \__  \  /    \   __\  \____ \|  |  \     /  _ \ /    \|  |  
//  / __ \|   |  \  | |  |  |_> >   Y  \   (  <_> )   |  \  |__
// (____  /___|  /__| |__|   __/|___|  / /\ \____/|___|  /____/
//      \/     \/        |__|        \/  \/            \/      
//

//Global state, can be referred to from any callback
window.antiphState = {
    inputs: [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
    lastMessage: null,
    initted: false,
    animVal: [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
};

//Defensive for testing when we aren't in the room environment
if (!window.room) {
    window.room = {}
};

//Used to install handlers on room entrance and initialize global vars
room.beforeInit = function() {
    
    console.log('beforeInit start');
    if (!window.antiphState.initted){
        console.log('Attempting to establish websocket connection');
        const wsantiph = "wss://antiph.onl/ws";
        const ws = new WebSocket(wsantiph);
        ws.onopen = () => {
            console.log('Websocket established');
        }
        //Parse data from Max into room objects 
        //Executes everytime we get a message
        ws.onmessage = e => {
            window.antiphState.lastMessage = e.data;
            let r = /(-?\d+\.?\d*)/g;
            let vals = window.antiphState.lastMessage.match(r);
            if (vals && vals.length >= 1) {
                window.antiphState.inputs = vals.map((el) => Number(el));
                //console.log(window.antiphState.inputs);
            } else {console.log("Unexpected message format: " + window.antiphState.lastMessage)}
        };
        window.antiphState.initted = true;
        console.log('beforeInit end: ' + window.antiphState.initted);
    } else {console.log('multiple calls to beforeInit()')}
}

room.afterInit = (api) => {
  // to get artwork list out of NAC run customScriptsAPI.getArtworks() 
  // in js console after work has been uploaded

  //fbx example 1
  // let fbxArtwork1 = api.getArtworkById(8580);
  // api.stopAllAnimations(fbxArtwork1);

  // //fbx example 2
  // let fbxArtwork2 = api.getArtworkById(####);
  // api.stopAllAnimations(fbxArtwork2);

  //////////  Audio Files
  //////////  
  //Audio example 1
  let audioArtwork1 = api.getArtworkById(27925);
  audioArtwork1.playAutomatically = false;

  let audioArtwork2 = api.getArtworkById(27924);
  audioArtwork2.playAutomatically = false;

    let audioArtwork3 = api.getArtworkById(27923);
  audioArtwork3.playAutomatically = false;

    let audioArtwork4 = api.getArtworkById(27922);
  audioArtwork4.playAutomatically = false;

    let audioArtwork5 = api.getArtworkById(27921);
  audioArtwork5.playAutomatically = false;

    let audioArtwork6 = api.getArtworkById(27920);
  audioArtwork6.playAutomatically = false;

    let audioArtwork7 = api.getArtworkById(27919);
  audioArtwork7.playAutomatically = false;

    let audioArtwork8 = api.getArtworkById(27918);
  audioArtwork8.playAutomatically = false;

    let audioArtwork9 = api.getArtworkById(27917);
  audioArtwork9.playAutomatically = false;

    let audioArtwork10 = api.getArtworkById(27916);
  audioArtwork10.playAutomatically = false;

    let audioArtwork11 = api.getArtworkById(27915);
  audioArtwork11.playAutomatically = false;

    let audioArtwork12 = api.getArtworkById(27914);
  audioArtwork12.playAutomatically = false;

    let audioArtwork13 = api.getArtworkById(27913);
  audioArtwork13.playAutomatically = false;

    let audioArtwork14 = api.getArtworkById(27912);
  audioArtwork14.playAutomatically = false;

    let audioArtwork15 = api.getArtworkById(27911);
  audioArtwork15.playAutomatically = false;



  // //Audio example 2
  // let audioArtwork2 = api.getArtworkById(####);
  // audioArtwork2.playAutomatically = false;
}

room.onFrame = function() {
    let api = window.customScriptsAPI;
    // input 0 Midi 45 - a0_45
    if (window.antiphState.inputs[0] == null || window.antiphState.inputs[0] == window.antiphState.animVal[0]){
            //do nothing
            }else {
                //api.playAnimationOnce(api.getArtworkById(10141), 'Take 001');
                api.playAudioOnce(api.getArtworkById(27925));
                window.antiphState.animVal[0] = window.antiphState.inputs[0];
                console.log('audio hit 0');
            }
    // // input 1 Midi 47 - b0_47
    // if (window.antiphState.inputs[1] == null || window.antiphState.inputs[1] == window.antiphState.animVal[1]){
    //         //do nothing
    //         }else {
    //             api.playAnimationOnce(api.getArtworkById(10143), 'Take 001');
    //             api.playAudioOnce(api.getArtworkById(8384));
    //             window.antiphState.animVal[1] = window.antiphState.inputs[1];
    //             console.log('audio hit 1');
    //         }

};