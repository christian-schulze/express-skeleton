path = require 'path'


# handy global folder paths
global.__approot = path.resolve(path.join(__dirname, '..'))
global.__projectroot = path.resolve(path.join(__approot, '..'))


# if PORT is not already set, determine based on NODE_ENV
unless process.env.PORT?
  process.env.PORT =
    switch process.env.NODE_ENV
      when 'test' then 3500
      when 'development' then 3000
      when 'production' then 80
      else 3000
