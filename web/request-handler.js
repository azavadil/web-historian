var path = require('path');
var archive = require('../helpers/archive-helpers');
// require more modules/folders here!
var url = require('url');
var messages = require('./http-helpers');


var messageRouter = {
  'POST' : archive.postMessage,
  'GET' : archive.getMessages,
  'OPTIONS': archive.sendOptionsResponse
};



// exports.handleRequest = function (req, res) {
//   res.end(archive.paths.list);
// };

exports.handleRequest = function(req, res) {

  var path = url.parse(req.url).pathname;
  var method = req.method;
  console.log('path:', path, 'method:', method);

  if(path === '/' && messageRouter[method]){
    messageRouter[method](req,res);
  }
  if(path === '/' && method === 'GET') {
    console.log('homepage')
    messages.sendHomePage(req,res);
  } else {
    messages.send404(req, res);
  }
};
