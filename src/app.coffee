

# initialize our application
require './config/init'


# initialize an express application instance
app = require('./config/express').init()


# map URI's to route handlers
require('./config/routes').mapRoutes(app)


# start the server
require('./config/server').start(app)
