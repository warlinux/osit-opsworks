package 'nodejs'
package 'npm'

execute 'npm-install' do
	command 'npm install express'
end

execute 'mkdirnodejs' do
        command 'mkdir /opt/nodejs/'
end

file '/opt/nodejs/hello-world.js' do
  mode 0644
  content "var express = require('express');
var app = express();

app.get('/', function (req, res) {
  res.send('Hello World!');
});

var server = app.listen(80, function () {
  var host = server.address().address;
  var port = server.address().port;

  console.log('Example app listening at http://%s:%s', host, port);
});"
end

execute 'nodeexec' do
	cwd '/opt/nodejs'
        command 'sudo /usr/bin/node /opt/nodejs/hello-world.js &'
end
