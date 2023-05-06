const app = require('express')();
const http = require('http').Server(app);

app.get('/', (req, res) => {
    res.sendFile(__dirname + '/index.html');
});

http.listen(3000, () => {
    console.log('server listening on port 3000');
});
