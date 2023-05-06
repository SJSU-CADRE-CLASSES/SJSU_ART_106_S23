const path = require('path');
const Max = require('max-api');
const WebSocket = require('ws');

const antiphonConfig = {
  protocol: 'https',
  host: 'antiph.onl',
  wsPort: '/ws',
};

const localConfig = {
  protocol: 'ws',
  host: 'localhost',
  wsPort: ':3030',
};

const { protocol, host, wsPort } = localConfig;

const wsUrl = `${protocol}://${host}${wsPort}`;

//                                                                         __  .__
// ___________     ____   ____     ____  ____   ____   ____   ____   _____/  |_|__| ____   ____   ______
// \____ \__  \   / ___\_/ __ \  _/ ___\/  _ \ /    \ /    \_/ __ \_/ ___\   __\  |/  _ \ /    \ /  ___/
// |  |_> > __ \_/ /_/  >  ___/  \  \__(  <_> )   |  \   |  \  ___/\  \___|  | |  (  <_> )   |  \\___ \
// |   __(____  /\___  / \___  >  \___  >____/|___|  /___|  /\___  >\___  >__| |__|\____/|___|  /____  >
// |__|       \//_____/      \/       \/           \/     \/     \/     \/                    \/     \/

const restartInterval = 20000;

class WSContainer {
  constructor() {
    this.ws = null;
    this.udpListener = null;
  }

  connect() {
    this.ws = new WebSocket(wsUrl);
    this.ws.onopen = this.onOpen.bind(this);
    this.ws.onmessage = this.onMessage.bind(this);
    this.ws.onclose = this.onClose.bind(this);
    this.ws.onerror = this.onError.bind(this);
  }

  onError(err) {
    Max.post('ws error: ' + err.message);
    process.exit(1);
  }

  onOpen() {
    Max.post('ws connected');
    //this.udpListener = new UDPListener(this.onUDPMessage.bind(this));
  }

  onUDPMessage(msg) {
    if (typeof msg == 'object') {
      msg = msg.toString();
    }
    Max.post(msg);
    this.sendMessage(msg);
  }

  onClose() {
    Max.post('ws disconnected');

    //TODO Report this loudly in production mode
    //Question Should we reconnect after a period? Could exit, but currently reconnecting after 20s
    if (restartInterval != 0) {
      setTimeout(this.connect.bind(this), restartInterval);
    } else {
      process.exit(1);
    }
  }

  onMessage({ data }, isBinary = false) {
    const message = isBinary ? JSON.stringify(data) : data.toString();

    Max.post(message);
  }

  sendMessage(msg, isBinary = false) {
    Max.post(`sending: ${msg}`);

    this.ws.send(msg, { binary: isBinary });
  }
}

const socketActive = new WSContainer();
socketActive.connect();

//                                             .__       .___
//   _____ _____  ___  ___ __  _  _____________|  |    __| _/
//  /     \\__  \ \  \/  / \ \/ \/ /  _ \_  __ \  |   / __ |
// |  Y Y  \/ __ \_>    <   \     (  <_> )  | \/  |__/ /_/ |
// |__|_|  (____  /__/\_ \   \/\_/ \____/|__|  |____/\____ |
//       \/     \/      \/                                \/

// This will be printed directly to the Max console
Max.post(`loaded ${path.basename(__filename)} script`);

Max.post(`requesting ws connection to ${wsUrl}`);

// Use the 'addHandler' function to register a function for a particular message
Max.addHandler('bang', () => {
  Max.post("Who you think you bangin'?");
  //socketActive.sendMessage(`Bang: ${new Date().toString()}`);
});

// Use the 'outlet' function to send messages out of node.script's outlet
Max.addHandler('echo', (msg) => {
  Max.outlet(msg);
});

Max.addHandler('start', () => {
  Max.post('Started');
});

Max.addHandler('list', (...msg) => {
  Max.post(typeof msg);

  socketActive.sendMessage(`Values: [${msg.join(', ')}]`);
});
