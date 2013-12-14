express = require 'express'
path    = require 'path'

module.exports =
  init: (options = {}) ->

    app = express()

    app.set 'port', process.env.PORT

    # views
    app.set 'views', path.join(__projectroot, 'views')
    app.set 'view engine', 'jade'

    # assets
    app.use require('connect-assets')
      paths: [path.join(__projectroot, 'assets/js'),
              path.join(__projectroot, 'assets/css')]
    app.use express.static(path.join(__projectroot, 'public'))

    # other
    app.use express.favicon()
    app.use express.logger('dev') unless app.get('env') == 'test'
    app.use express.json()
    app.use express.urlencoded()
    app.use express.methodOverride()
    app.use express.cookieParser('your secret here')
    app.use express.session()
    app.use app.router

    # development only
    if app.get('env') == 'development'
      app.use express.errorHandler()

    return app
