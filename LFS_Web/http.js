var express = require('express');
var app = express();

app.use(express.static('root'));

app.get('/xxx',function(req,res){
	res.send('root');
})
var server = app.listen(3001,function(){
    var host = server.address().address;
    var port = server.address().port;
    console.log('http://%s:%s',host,port);
})