var fs = require('fs');
var path = require('path');
var _ = require('underscore');

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
    data = data.toString().split(',');
    data = data.length > 1 ? data.slice(0,data.length-1) : data;
    var urls = {};
  console.log('data', data);
    for(var i = 0; i < data.length; i++){
      urls[data[i]] = true;
    }
    if(urls[url]){
      callback(true);
    } else {
      callback(false);
      exports.addUrlToList(url);
    }
  });
};

exports.isUrlInList = function(url, callback){
  readListOfUrls(url, callback);

};

exports.addUrlToList = function(url){
  fs.appendFile(filePaths.tmp, url.trim()+',', function(err){
    if(err) throw 'addUrlToList failed';
  });
};

// used by cronApp
exports.isURLArchived = function(){
};

// used by
exports.getURLHtml = function(){

};

exports.downloadUrls = function(){
  // cron job
};
