const host = 'localhost';
const port = 3030;

class WebsocketContainer
{
    constructor()
    {
        this.ws = null;
        this.handler = null;

    }

    setMessageHandler(h)
    {
        this.handler = h;
    }

    connect()
    {
        this.ws = new WebSocket(`ws://${host}:${port}`);
        this.ws.onopen = this.onOpen.bind(this);
        //When a mesage is received, the under the hood ws class will send an event param
            //to our defined onMessage method, whicch then gets logged as JSON string
        this.ws.onmessage = this.onMessage.bind(this);
    }

    onOpen()
    {
        console.log("Houston, we have a connection");
    }

    onMessage(event)
    {
        
        let message = JSON.stringify(event.data);
        console.log(message);
        this.handler.addMessage(message);
    }

    sendMessage(msg)
    {
        this.ws.send(msg);
    }

}

class PageDesc
{
    constructor()
    {
        this.sender = null;
        this.content = document.getElementById('content');
        this.messages = document.getElementById('messages');
        
        let html = [];
        for(let i=0;i<7;i++)
            html.push(`<div>
            <label for="input${i}">Input ${i}</label>
            <input type="number" value='0' id="input${i}" style="width:5em">
            </div>`);
        html.push(`
                    <p></p>
                    <button> Send </button>
                    <p></p>
                    <hr></hr>`)

        this.content.innerHTML = html.join('\n'); 
        this.button = this.content.querySelector('button');
        this.button.onclick = () =>
        {
            let inputs = this.content.querySelectorAll('input');
            let payload = {};
            for (let i of inputs)
            {
                payload[i.id] = i.value;
            }
            this.sender.sendMessage(JSON.stringify(payload));
            console.log(JSON.stringify(payload))
        }
    }

    addMessage(msg)
    {
        this.messages.innerHTML = msg;
    }

    setMessageSender(sender)
    {
        this.sender = sender
    }
}


console.log('Loaded Websocket');

const pd = new PageDesc();
const a = new WebsocketContainer();

pd.setMessageSender(a);
a.setMessageHandler(pd);
a.connect();





