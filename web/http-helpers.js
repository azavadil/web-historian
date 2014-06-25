var path = require('path');
var fs = require('fs');
var archive = require('../helpers/archive-helpers');
var utils = require('./server-utils');

exports.headers = headers = {
  "access-control-allow-origin": "*",
  "access-control-allow-methods": "GET, POST, PUT, DELETE, OPTIONS",
  "access-control-allow-headers": "content-type, accept",
  "access-control-max-age": 10, // Seconds.
  'Content-Type': "text/html"
};

exports.serveAssets = function(res, asset) {
  // Write some code here that helps serve up your static files!
  // (Static files are things like html (yours or archived from others...), css, or anything that doesn't change often.)
};

exports.sendHomePage = function(req, res){

  fs.readFile(__dirname + '/public/index.html',function(err, content){
    if(err){
      throw "Error: file not read";
    } else {
      res.writeHead(200,{'Content-type':'text/html'});
      res.end(content);
    }

  });
};

exports.sendOptionsResponse = function(req, res){
  utils.sendResponse(res, null);
};

exports.send404 = send404 = function(req, res){
  utils.sendResponse(res, 'Not Found', 404);
};



// As you progress, keep thinking about what helper functions you can put here!
