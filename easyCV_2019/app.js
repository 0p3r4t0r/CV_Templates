const express = require('express');
const app = express();
const path = require('path');
const port = 3000;

app.use(express.static('img'));

app.get('/', function(req, res) {
    res.sendFile(path.join(__dirname + '/easyCV.html'));
});

app.listen(port, () => console.log(`easyCV app listening on port ${port}!`));
