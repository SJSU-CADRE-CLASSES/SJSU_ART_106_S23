const express = require('express');
const path = require('path');

//---------HTTP
const httpUse = false;
if(httpUse)
{
    const root = path.join(__dirname, 'www');

    const app = express(); //HTTP Server

    const httpPort = 8765;

    //Default route delivers the file 'index.html'
    app.get('/', 
    (req, res) =>
    {
      res.sendFile(path.join(root, 'index.html'));
    });

    //serve static context
    app.use(express.static(root));


    //Start the HTTP Server
    app.listen(httpPort, () =>
    {
      console.log(`listening http://localhost:${httpPort}`);
    });
}

//--------HTTP

//UDP

//Change port to agree with UDP broadcast address, for ex. of a mocap system
const udpPort = 41234;
const dgram = require('dgram');

class UDPListener
{
    constructor(onmessage)
    {
      this.mocaplisten = dgram.createSocket('udp4');
      this.mocaplisten.on('error', this.onError.bind(this));
      this.mocaplisten.on('message', this.onMessage.bind(this));
      this.mocaplisten.on('listening', this.onListening.bind(this));
      this.mocaplisten.bind(udpPort);
      this.messageList = [];
      this.messageClient = onmessage;
    }

    onError(err)
    {
      console.log(`server error:\n${err.stack}`);
      mocaplisten.close();
    }

    onMessage(msg)
    {
      //console.log(`server got: ${msg} from ${host}:${wsocketPort}`);
      //this.messagesList.push(msg);
      //TO DO: prune list when large and parse into JSON object, then trigger send
      if (this.messageClient)
      {
        this.messageClient(msg);
      }
    }

    onListening()
    {
      const address = this.mocaplisten.address();
      console.log(`server listening ${address.address}:${address.port}`);
    }
}

//UDP

//WS
const WebSocket = require('ws');
const { type } = require('os');
//Eventually, change host to newart city and will likely be port 80 or 443
//If it is 443, then protocol should be wss
const protocol = 'ws';
const host = 'localhost';
const wsocketPort = 3030;

//OnClose, restart interval. Set to 0 if you do not want to restart
const restartInterval = 20000;


const wsurlnewart = `${protocol}://${host}:${wsocketPort}`;

class WebsocketContainer
{
    constructor()
    {
        this.ws = null;
        this.udpListener = null;
    }

    connect()
    {
        this.ws = new WebSocket(wsurlnewart);
        this.ws.onopen = this.onOpen.bind(this);
        this.ws.onmessage = this.onMessage.bind(this);
        this.ws.onclose = this.onClose.bind(this);
        this.ws.onerror = this.onError.bind(this);

    }

    onError(err)
    {
      console.error(err.message);
      process.exit(1);
    }

    onOpen()
    {
        console.log("Houston, we have a connection");
        this.udpListener = new UDPListener(this.onUDPMessage.bind(this));
    }

    //This is what came from the UDP listener
    onUDPMessage(msg)
    { 
      if(typeof(msg) == 'object')
      {
        msg = msg.toString();        
      }
      console.log(msg);
      this.sendMessage(msg);
    }

    onClose()
    {
        console.log('Disconnected');
        //TODO Report this loudly in production mode
        //Question Should we reconnect after a period? Could exit, but currently reconnecting after 20s
        if (restartInterval != 0)
        {
          setTimeout(this.connect.bind(this), restartInterval);
        } else
        {
          process.exit(1);  
        }
    }

    //Not expecting to receive messages
    onMessage(event)
    {
        
        let message = JSON.stringify(event.data);
        //console.log(message);
    }

    sendMessage(msg)
    {
        this.ws.send(msg);
    }

}

//WS

const socketActive = new WebsocketContainer();
socketActive.connect();

