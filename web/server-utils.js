var headers = {
  "access-control-allow-origin": "*",
  "access-control-allow-methods": "GET, POST, PUT, DELETE, OPTIONS",
  "access-control-allow-headers": "content-type, accept",
  "access-control-max-age": 10, // Seconds.
  'Content-Type': "text/html"
};


var sendResponse = function(response, data, statusCode){
  statusCode = statusCode || 200;
  response.writeHead(statusCode, headers);
  response.end(JSON.stringify(data));
};

var collectData = function(request, cb){
  var data = "";

  request.on("data", function(chunk){
    data += chunk;
  });
  request.on("end", function(){
    cb(null, JSON.parse(data));
  });
};


exports.sendResponse = sendResponse;
exports.collectData = collectData;
