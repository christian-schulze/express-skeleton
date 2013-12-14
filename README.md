# express-skeleton

My rendition of a NodeJS/Express skeleton application, which I'm using to quickly bootstrap node based experimentation.

Features include:

* [express](http://expressjs.com/) 3.x
* [connect-assets](https://github.com/adunkman/connect-assets/tree/v3) for client side asset pipeline stuff (compiling, minifying)
* [mocka](http://visionmedia.github.io/mocha/) and [chai](http://chaijs.com/) with promises ([mocka-as-promised](https://npmjs.org/package/mocha-as-promised), [chai-as-promised](https://npmjs.org/package/chai-as-promised)) for TDD
* [wd](https://github.com/admc/wd) for driving browsers via selenium webdriver
* [istanbul](https://github.com/gotwarlost/istanbul) for code coverage
* [coffee-script](http://coffeescript.org/) because I enjoy writing coffeescript more than javascript
* [grunt](http://gruntjs.com/) + community contributed coffee-script tasks for auto-compiling on change
* make tasks for compiling coffeescript, installing modules, running tests etc

## Contributers

* [Christian Schulze](https://github.com/christian-schulze)

## License

Released under the MIT license. Please see the `LICENSE` file for more information.
