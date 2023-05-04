## In order to get running (UDPATED):

1. Open, newartcitywebsocketserver (to be added as a socket listener on newartcity in theory) `node newartcitywebsocketserver.js`
2. In a separate terminal, `node testUdp.js` (to represent dummy mocap data as an example to be sent through the pipeline)
3. In a third terminal, `node mocapsender.js` (to represent the local connection to the websocket, receiving UDP data and sending to newart.city)
4. The times seen in terminal after step 3 were created as UDP, send to mocapsender, turned into strings, and sent to my version of the newartcitywebsocketserver which logged        it to console.
    
*NOTES: You can still use the index.html and websocket.js to represent an end user connecting to "newart.city"
