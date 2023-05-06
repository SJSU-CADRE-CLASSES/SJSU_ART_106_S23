import express from 'express';
import WebSocket, { WebSocketServer } from 'ws';

const app = express();
app.use(express.static('html'));

const port = 3000;
const wsPort = 3030;

const wss = new WebSocketServer({ port: wsPort });
const connections = [];

app.listen(port, () => {
  console.log(`express server: http://localhost:${port}`);
  console.log(`ws server: ws://:${wsPort}`);
});

//Listen for connections on the websocket
wss.on('connection', (client) => {
  console.log(`new connection | ${wss.clients.size} clients`);

  connections.push(new WSConnection(wss, client));
});

class WSConnection {
  constructor(server, socket) {
    this.server = server;
    this.socket = socket;

    this.messages = [];
    this.logMessages = false;

    socket.on('close', this.onClose.bind(this));
    socket.on('message', this.onMessage.bind(this));
  }

  onClose() {
    console.log(`connection closed | ${this.server.clients.size} clients`);
  }

  //Takes message and broadcasts to all other connections
  onMessage(message, isBinary = false) {
    if (this.logMessages) this.messages.push(message);

    const data = isBinary ? message : message.toString();

    this.server.clients.forEach((client) => {
      if (client.readyState === WebSocket.OPEN) {
        client.send(JSON.stringify([data]));
      }
    });
  }

  sendClock() {
    let ts = new Date().toString();
    this.socket.send(ts);

    return setTimeout(this.sendClock.bind(this), 1000);
  }
}
