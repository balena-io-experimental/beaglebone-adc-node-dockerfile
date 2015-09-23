//note: this is a fork of the original octalbonescript, so that it is compatible with kernel 4.1,
//in this fork, i2c and spi don't get installed.
//You can find the npm module here: https://www.npmjs.com/package/octalbonescript_capemgr4_1
var b = require('octalbonescript_capemgr4_1'); //load the library
console.log("starting ADC script...")
  // no pinmode is required for analogRead as those pins are dedicated.
var pin = 'P9_33'; //the pin to operate on

b.analogRead(pin, function(err, value) {
  if (err) {
    console.error(err.message);
    return;
  }
  console.log(value); // value is floating point number between 0 and 1.
});
