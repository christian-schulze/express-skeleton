
module.exports =
  start: (app) ->
    http = require 'http'
    http.createServer(app).listen app.get('port'), ->
      console.log 'Express server listening on port ' + app.get('port')

    return http
