
module.exports.init = (app) ->

  app.get '/', (req, res) ->
    res.render 'index', title: 'Hello World'
