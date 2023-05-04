const dgram = require('dgram');

const client = dgram.createSocket('udp4');


function sendTime()
{
    let msg = new Date().toLocaleString();
    const message = Buffer.from(`UDP: ${msg}`);

    client.send(message, 41234, 'localhost', (err) => {
        if (err)
        {
            console.log(err);
        }
      });
      setTimeout(sendTime, 500);
}

sendTime();
