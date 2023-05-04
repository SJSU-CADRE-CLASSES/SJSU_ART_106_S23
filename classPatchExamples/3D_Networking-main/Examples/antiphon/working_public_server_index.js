const express = require('express');
const app = express();
const port = 3000;

const WebSocket = require('ws');
const wsocketPort = 3030;
const socketServer = new WebSocket.Server({port: wsocketPort}); //Creating Websocket Server
const messages = [];

// app.get('/', (req, res) => {
//   res.send('Hello World!')
// })
app.use(express.static('html'))

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})

console.log(`listening ws://:${wsocketPort}`);

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

    //this.sendClock();
  }
  onClose()
  {
    console.log('closed');
    console.log('Number of clients: ', this.server.clients.size);
  }

  //Takes message and broadcasts to all other connections
  onMessage(message)
  {
    //Commented out because it could get too big. If we want a log, add a pruning functionality
    //this.messages.push(message);
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
