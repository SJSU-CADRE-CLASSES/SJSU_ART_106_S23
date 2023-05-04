/**
 * Gamestate calculator
 * This is the intermediary server (i.e. Antiphon out of the Max > Antiphon > NAC flow)
 * We calculate the representation of the entire game at this server. This server then sends instructions to NAC to render the game
 * At this time, we do little calculation at this level.
 */

// A fixed length queue DS.
// TODO create queue interface and make different, more efficient queues (partial acceptance probability, use estimator for position with some probability, etc.)
class Queue {
    constructor(size=16000) {
        this.size = size;
        this.array = [];
    }
    
    enqueue(value) {
        if (this.array.length >= this.size) {
            this.array.shift();
        }
        this.array.push(value);
    }

    dequeue() {
        if (this.array.length !== 0) {
            return this.array.pop();
        } else {
            return undefined;
        }
    }

    peek() {
        return this.array[this.array.length - 1];
    }
}
  

const serverPort = 7000;
const queueSize = 16000;
const ws = require('ws')
const wss = new ws.WebSocketServer({port: serverPort});
var queue = new Queue(queueSize);

console.log(`listening ws://:${serverPort}`);

wss.on('connection', function connection(ws) {
    console.log('Server has a connected client');

    ws.on('message', function message(data) {
        console.log('Server received: %s', data);
        // if the message was a get, return data unless the queue is empty. 
        if (data.toString() === 'get') {
            if(queue.peek() === undefined) { ws.send('no data'); }
            else { ws.send(queue.dequeue()); }
            console.log('dq');
        }
        // if the message was not a get, enqueue the data.
        // TODO verify form of packet
        else {
            queue.enqueue(data);
            console.log('eq');
        }
    });
});
