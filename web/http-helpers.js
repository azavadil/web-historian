var path = require('path');
var fs = require('fs');
var archive = require('../helpers/archive-helpers');
var utils = require('./server-utils');
var url = require('url');
var mysql = require('mysql');


var connection = mysql.createConnection({
  host     : 'localhost',
  database : 'WEB_HIST',
  user     : 'root'
});

connection.connect();
connection.query('SELECT * FROM sites', function(err, rows, fields) {
  if (err) throw err;

  console.log('rows', rows);
  console.log('fields', fields);

});

connection.end();


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

exports.sendStaticPage = function(req, res, isLoadingHtmlRequest){
  var uri = url.parse(req.url).pathname;
  uri = isLoadingHtmlRequest ? 'public/loading.html' : uri;
  var filename = path.join(process.cwd(), uri);

  path.exists(filename, function(exists) {
    if(!exists) {
      utils.sendResponse(res);
      return;
    } else if (uri === '/') {
      filename += 'public/index.html';
    }

    var mimeType = mimeTypes[path.extname(filename).split(".")[1]];
    res.writeHead(200, mimeType);

    var fileStream = fs.createReadStream(filename);
    fileStream.pipe(res);

  }); //end path.exists
};

exports.sendCachedPage = function(req, res, site){
  var uri = url.parse(req.url).pathname;
  var filename = archive.paths.archivedSites + '/' + site;

  path.exists(filename, function(exists) {
    // functions like an assertion. we only reach this
    // point if we matched a url so there should be a
    // corresponding file
    if(!exists) {
      throw 'cache file does not exist';
      return;
    };
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
