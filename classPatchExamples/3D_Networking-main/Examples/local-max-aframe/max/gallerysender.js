const path = require('path');
const Max = require('max-api');
const WebSocket = require('ws');
const { type } = require('os');

const protocol = 'https';
const host = 'antiph.onl';
const wsocketPort = '/ws';
const wsurlocean = `${protocol}://${host}${wsocketPort}`;


//                                                                         __  .__                      
// ___________     ____   ____     ____  ____   ____   ____   ____   _____/  |_|__| ____   ____   ______
// \____ \__  \   / ___\_/ __ \  _/ ___\/  _ \ /    \ /    \_/ __ \_/ ___\   __\  |/  _ \ /    \ /  ___/
// |  |_> > __ \_/ /_/  >  ___/  \  \__(  <_> )   |  \   |  \  ___/\  \___|  | |  (  <_> )   |  \\___ \ 
// |   __(____  /\___  / \___  >  \___  >____/|___|  /___|  /\___  >\___  >__| |__|\____/|___|  /____  >
// |__|       \//_____/      \/       \/           \/     \/     \/     \/                    \/     \/ 


const restartInterval = 20000;

class WebsocketContainer{
    constructor(){
        this.ws = null;
        this.udpListener = null;
    }

    connect(){
        this.ws = new WebSocket(wsurlocean);
        this.ws.onopen = this.onOpen.bind(this);
        this.ws.onmessage = this.onMessage.bind(this);
        this.ws.onclose = this.onClose.bind(this);
        this.ws.onerror = this.onError.bind(this);
    }

    onError(err){
      Max.post('WS Error: ' + err.message);
      process.exit(1);
    }

    onOpen(){
        Max.post("Houston, we have a connection");
        //this.udpListener = new UDPListener(this.onUDPMessage.bind(this));
    }

    //This is what came from the UDP listener
    onUDPMessage(msg){ 
      if(typeof(msg) == 'object'){
        msg = msg.toString();        
      }
      Max.post(msg);
      this.sendMessage(msg);
    }

    onClose(){
        Max.post('Disconnected');
        //TODO Report this loudly in production mode
        //Question Should we reconnect after a period? Could exit, but currently reconnecting after 20s
        if (restartInterval != 0){
          setTimeout(this.connect.bind(this), restartInterval);
        } else {
          process.exit(1);  
        }
    }

    //Not expecting to receive messages
    onMessage(event){ 
        let message = JSON.stringify(event.data);
        Max.post(message);
    }

    sendMessage(msg){
        this.ws.send(msg);
    }

}

//                                             .__       .___
//   _____ _____  ___  ___ __  _  _____________|  |    __| _/
//  /     \\__  \ \  \/  / \ \/ \/ /  _ \_  __ \  |   / __ | 
// |  Y Y  \/ __ \_>    <   \     (  <_> )  | \/  |__/ /_/ | 
// |__|_|  (____  /__/\_ \   \/\_/ \____/|__|  |____/\____ | 
//       \/     \/      \/                                \/ 

// This will be printed directly to the Max console
Max.post(`Loaded the ${path.basename(__filename)} script`);

const socketActive = new WebsocketContainer();
socketActive.connect();

Max.post(`Requesting Websocket connection to ${wsurlocean}`);

// Use the 'addHandler' function to register a function for a particular message
Max.addHandler("bang", () => {
  Max.post("Who you think you bangin'?");
  socketActive.sendMessage(`Bang: ${new Date().toString()}`);
});

// Use the 'outlet' function to send messages out of node.script's outlet
Max.addHandler("echo", (msg) => {
	Max.outlet(msg);
});

Max.addHandler("start", () => {
  Max.post('Started')
});

Max.addHandler("list", (...msg) => {
  Max.post(typeof(msg));
  socketActive.sendMessage(`Values: [${msg.join(', ')}]`);
});