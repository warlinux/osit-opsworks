package 'nodejs'
package 'npm'

execute 'npm-install' do
	command 'npm install express'
end

#execute 'mkdirnodejs' do
#        command 'mkdir /opt/nodejs/'
#end

directory '/opt/nodejs'

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
	cwd '/opt/'
        command 'bash /opt/nodejs.sh'
end
