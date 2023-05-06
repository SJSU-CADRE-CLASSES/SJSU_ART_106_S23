const express = require('express');
const path = require('path');
const WebSocket = require('ws');


const httpPort = 8765;
//On actual use, this '3030' becomes '443' (WSS) or '80' (WS)
const wsocketPort = 3030;
const doHttp = true;

const app = express(); //HTTP Server

const root = path.join(__dirname, 'www');
const socketServer = new WebSocket.Server({port: wsocketPort}); //Creating Websocket Server
const messages = [];


if (doHttp)
{
    //Default route delivers the file 'index.html'
    app.get('/', 
    (req, res) => {
      res.sendFile(path.join(root, 'index.html'));
    });

    //serve static context
    app.use(express.static(root));


    //Start the HTTP Server
    app.listen(httpPort, () => {
      console.log(`listening http://localhost:${httpPort}`);
    });
}


//Listen for connections on the websocket
socketServer.on('connection', (socket2Client) =>
{
  console.log('connected');
  console.log('client Set length: ', socketServer.clients.size);
  
  let connect = new WSConnection(socketServer, socket2Client);

}); //This is the end of the on connection handler



class WSConnection
{
  constructor(server, socket){
    this.server = server;
    this.socket = socket;
    this.messages = [];
    socket.on('close', this.onClose.bind(this));
    socket.on('message', this.onMessage.bind(this));

    this.sendClock();
  }
  onClose()
  {
    console.log('closed');
    console.log('Number of clients: ', this.server.clients.size);
  }

  //Takes message and broadcasts to all other connections
  onMessage(message)
  {
    this.messages.push(message);
    console.log(message);
    this.server.clients.forEach((client) =>
    {
      if (client.readyState === WebSocket.OPEN)
      {
        client.send(JSON.stringify([message]));
      }
    });
  }

  sendClock()
  {
    let ts = new Date().toString();
    this.socket.send(ts);
    setTimeout(this.sendClock.bind(this), 1000);
//    console.log(ts);
  }

}
