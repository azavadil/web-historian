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


exports.handleRequest = function(req, res) {

  var path = url.parse(req.url).pathname;
  var method = req.method;
  console.log('path:', path, 'method:', method);

  if(path === '/' && messageRouter[method]){
    messageRouter[method](req,res);
    return;
  }
  if(path === '/' && method === 'GET') {
    messages.sendStaticPage(req, res, false);

  }else if(path === '/page-request' && method === 'POST'){
    // get data from post
    // TODO: refactor to use collectData
    var chunk = '';
    req.on('data', function(data){
      chunk += data.toString();
    });

    req.on('end',function(){
      chunk = chunk.substring(4);
      console.log('chunk', chunk);
      archive.isUrlInList(chunk, function(urlFound){
        if(urlFound){
          console.log('url is found');
          // read from sites dir and send cached html
          // archive.
          messages.sendCachedPage(req, res, chunk);
        }else{
          // response with loading.html
          messages.sendStaticPage(req, res, true);
        }
      });
    });

  }else if(path.substr(0,7) === '/public'){
    messages.sendStaticPage(req, res);
  }else {
    messages.send404(req, res);
  }
};
