global.SpecHelper = require 'spec_helper'


process.env.NODE_ENV = 'test'


global.loadApp = ->
  path = require 'path'
  appFolder = path.resolve('.')

  require path.join(appFolder, 'app.js')
