#load the universal BBB cape using capemgr, so we have access to ADC device.
echo cape-universaln > /sys/devices/platform/bone_capemgr/slots

# launch the node ADC demo code
node /usr/src/app/adc.js
