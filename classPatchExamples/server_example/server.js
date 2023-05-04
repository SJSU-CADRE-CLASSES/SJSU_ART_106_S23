const WebSocket = require('ws');
const url = require('url');

const server = new WebSocket.Server({ port: 8080 });

const clients = new Map();

server.on('connection', function (socket, req) {
  const clientId = url.parse(req.url, true).query.clientId;
  console.log(`New client connected: ${clientId}`);

  clients.set(clientId, socket);

  socket.on('message', function (message) {
    console.log(`Received message from client ${clientId}: ${message}`);

    clients.forEach(function (clientSocket, clientClientId) {
      if (clientSocket !== socket && clientClientId === clientId) {
        clientSocket.send(`Client ${clientId}: ${message}`);
      }
    });
  });

  socket.on('close', function (code, reason) {
    console.log(`Client ${clientId} disconnected`);
    clients.delete(clientId);
  });
});
