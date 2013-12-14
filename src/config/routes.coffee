
module.exports =

  mapRoutes: (app) ->
    path  = require 'path'
    fs    = require 'fs'
    routeDir = path.join(__approot, 'routes')
    files = fs.readdirSync(routeDir)
    files.forEach (fileName) ->
      filePath = path.join(routeDir, fileName)
      require(filePath).init(app)
