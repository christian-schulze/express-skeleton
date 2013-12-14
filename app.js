path = require('path');


var relativePath = '';

// in production environment, use pre-compiled js files in the 'target' folder
if (process.env.NODE_ENV == 'production' || process.env.NODE_TARGET) {
  relativePath = 'target/app.js';

// in non production environment, use coffee-script files in the 'src' folder
} else {
  require('coffee-script');
  relativePath = 'src/app.coffee';
}


var fullPath = path.join(__dirname, relativePath);
require(fullPath);
