## Analog Input with Beaglebone and Resin.io

#### **--This will only work on resin.io images downloaded after 22-09-2015--**

This example demonstrates how to read an analog voltage on a [resin.io](https://resin.io/) enabled Beaglebone board.
One of the first things you will notice if you look at the [adc.js](/adc.js) file
is that we don't use the regular bonescript or octalbonescript.

The reason for this is that the resin.io Beaglebone OS image is based on the latest kernel 4.1 and for this reason many of the popular libraries are not yet ported to this kernel, however work is already under way.

The project itself uses a simple [dockerfile](/Dockerfile) to grab the [resin/beaglebone-node](https://hub.docker.com/r/resin/beaglebone-node/) from the [docker registry](https://hub.docker.com). It then just npm installs the ["unofficial" version of octalbonescript](https://www.npmjs.com/package/octalbonescript_capemgr4_1).

__Note:__ The i2c and spi functionality have not added to this version of octalbonescript.

When the container starts, it first runs the [start-container script](/start-container.sh) and makes sure the correct `cape` is loaded by the capemgr. It then starts the node.js script.

The node.js script simply has an interval loop that reads the analog signal of pin `P9_33` every 3 seconds.
