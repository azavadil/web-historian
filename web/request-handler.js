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
  console.log('substr: ' + path.substr(7));

  if(path === '/' && messageRouter[method]){
    messageRouter[method](req,res);
    return;
  }
  if(path === '/' && method === 'GET') {
    archive.readListOfUrls();
    messages.sendStaticPage(req,res);
  } else if(path.substr(0,7) === '/public'){
    messages.sendStaticPage(req, res);
  }else {
    messages.send404(req, res);
  }
};
