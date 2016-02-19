var client = require('simplecached')
var options = {
    port: 11511,
    host: '192.168.1.15'
};

var client = new client:Client(options, function(error) {
  console.log('Client connected');
  var key = 'Ironhack'
  var value = "we are ironhackers"

  client.get(key, function(error, value) {
    console.log('READ ->', Value);
    client.close()
}