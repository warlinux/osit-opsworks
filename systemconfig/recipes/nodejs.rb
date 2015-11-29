package 'nodejs'
package 'npm'

execute 'npm-install' do
	command 'npm install express'
end

file '/opt/nodejs/hell-world.js' do
  mode 0644
  content 'var express = require('express');
var app = express();

app.get('/', function (req, res) {
  res.send('Hello World!');
});

var server = app.listen(3000, function () {
  var host = server.address().address;
  var port = server.address().port;

  console.log('Example app listening at http://%s:%s', host, port);
});
end

execute 'helloworldjs' do
        command 'node /opt/nodejs/hell-world.js'
end
