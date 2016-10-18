var express = require('express');
var app = express();
app.get('/',function(req,res){
    res.send('hello world!1');
})

var server = app.listen(3001,function(){
    var host = server.address().address;
    var port = server.address().port;
    console.log('http://%s:%s',host,port);
})