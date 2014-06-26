var fs = require('fs');
var path = require('path');
var _ = require('underscore');
var httpRequest = require('http-request');

/*
 * You will need to reuse the same paths many times over in the course of this sprint.
 * Consider using the `paths` object below to store frequently used file paths. This way,
 * if you move any files, you'll only need to change your code in one place! Feel free to
 * customize it in any way you wish.
 */

exports.paths = filePaths = {
  'siteAssets' : path.join(__dirname, '../web/public'),
  'archivedSites' : path.join(__dirname, '../archives/sites'),
  'list' : path.join(__dirname, '../archives/sites.txt'),
  'tmp' : path.join(__dirname, '../archives/tmp.txt')
};

var prepFile = function(data){
  data = data.toString().split(',');
  data = data.length > 1 ? data.slice(0,data.length-1) : data;
  return data;
};

// Used for stubbing paths for jasmine tests, do not modify
exports.initialize = function(pathsObj){
  _.each(pathsObj, function(path, type) {
    exports.paths[type] = path;
  });
};

// The following function names are provided to you to suggest how you might
// modularize your code. Keep it clean!

exports.readListOfUrls = readListOfUrls = function(url, callback){
  var list = fs.readFile(filePaths.list, function(err, data){
    data = prepFile(data);
    var urls = {};
    for(var i = 0; i < data.length; i++){
      urls[data[i]] = true;
    }
    if(urls[url]){
      callback(true);
    } else {
      callback(false);
      exports.addUrlToList(filePaths.tmp, url);
    }
  });
};

exports.isUrlInList = function(url, callback){
  readListOfUrls(url, callback);

};

exports.addUrlToList = function(filepath, url){
  fs.appendFile(filepath, url.trim()+',', function(err){
    if(err) throw 'addUrlToList failed';
  });
};

// used by cronApp
exports.isURLArchived = function(url){
  var results;
  fs.readFile(filePaths.list, function(err, data){
    data = prepFile(data);
    results = _.contains(data, url);
  });

  return results;
};

// used by
exports.getURLHtml = function(url){
  httpRequest.get(url, function(err, res){
    if(err) { console.log(err); return; }
    filename = filePaths.archivedSites + '/' + url;
    var newFile = fs.createWriteStream(filename);

    fs.writeFileSync(filename, res.buffer.toString());
  });
};

exports.downloadUrls = function(){
  // cron job
  console.log('cron job triggered');
  fs.readFile(filePaths.tmp,  function(err, data){
    if(err) throw 'did not read tmp file. invoked by downloadUrls';
    var urls = prepFile(data);
    fs.writeFileSync(filePaths.tmp, '');

    _.each(urls, function(url){
      if(!exports.isURLArchived(url)){
        exports.getURLHtml(url);
        exports.addUrlToList(filePaths.list, url);
      }
    });
  });


};
