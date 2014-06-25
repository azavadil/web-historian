var path = require('path');
var fs = require('fs');
var archive = require('../helpers/archive-helpers');
var utils = require('./server-utils');
var url = require('url');

exports.headers = headers = {
  "access-control-allow-origin": "*",
  "access-control-allow-methods": "GET, POST, PUT, DELETE, OPTIONS",
  "access-control-allow-headers": "content-type, accept",
  "access-control-max-age": 10, // Seconds.
  'Content-Type': "text/html"
};

var mimeTypes = {
    "html": "text/html",
    "jpeg": "image/jpeg",
    "jpg": "image/jpeg",
    "png": "image/png",
    "js": "text/javascript",
    "css": "text/css"};

exports.serveAssets = function(res, asset) {
  // Write some code here that helps serve up your static files!
  // (Static files are things like html (yours or archived from others...), css, or anything that doesn't change often.)
};

exports.sendStaticPage = function(req, res){
  var uri = url.parse(req.url).pathname;
  var filename = path.join(process.cwd(), uri);

  path.exists(filename, function(exists) {
    if(!exists) {
      utils.sendResponse(req, res);
      return;
    } else if (uri === '/') {
      filename += 'public/index.html';
    }
    console.log('filename: ' + filename);

    var mimeType = mimeTypes[path.extname(filename).split(".")[1]];
    res.writeHead(200, mimeType);

    var fileStream = fs.createReadStream(filename);
    fileStream.pipe(res);

  }); //end path.exists
};

exports.sendOptionsResponse = function(req, res){
  utils.sendResponse(res, null);
};

exports.send404 = send404 = function(req, res){
  utils.sendResponse(res, 'Not Found', 404);
};



// As you progress, keep thinking about what helper functions you can put here!
