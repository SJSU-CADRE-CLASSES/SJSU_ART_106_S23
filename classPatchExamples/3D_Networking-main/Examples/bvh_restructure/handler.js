/**
 * Max message handler for individual user
 * Currently, parses a dictionary from Max containing data for a specific user.
 * No data validation is done.
 * 
 */

// set up websockets and udp sockets
const wsAPI = require('ws');
const connectionURL = 'wss://etoi.li/ws';
const ws = new wsAPI.WebSocket(connectionURL)
const dgramAPI = require('dgram')
const s = dgramAPI.createSocket('udp4')

// Ensure the following:
// (1). Axis Neuron is sending on port 7002 for client data. 
// (2). Set Axis Neuron to output normal BVH data in String format AND restart Axis Neuron
s.bind(7002)
// upon receiving a message, this function decodes and sends to server.
ws.on('open', function open() {
    console.log('Connected to %s', connectionURL);
    s.on('message', function (msg) {
        // decode and send
        const decoder = new TextDecoder('us-ascii');
        var str = decoder.decode(msg);
        // remove end of line and excess data (fixed size, but probably better to regex it).
        str = str.slice(9, -3);
        ws.send(str);
    })
})
