console.log("Server started");

var mosiPin = 5;
var sclkPin = 6;

//Config for hvpia
var gpioList = [22,23,25,10,15,17,18,27]
//Config for hvpib
var gpioList = [02,03,04,14,09,25,11,28]

var GPIO = require('onoff').Gpio;

//Create SPI Client where spiSetup(csPin, mosiPin, sclkPin)
//Config for hvpib

var hvZeroA  = spiSetup(02, 5, 6);
var hvZeroB  = spiSetup(03, 5, 6);
var hvOneA   = spiSetup(04, 5, 6);
var hvOneB   = spiSetup(14, 5, 6);
var hvTwoA   = spiSetup(15, 5, 6);
var hvTwoB   = spiSetup(17, 5, 6);
var hvThreeA = spiSetup(18, 5, 6);
var hvThreeB = spiSetup(27, 5, 6);

//Config for hvpia
/*
var hvZeroA  = spiSetup(22, 5, 6);
var hvZeroB  = spiSetup(23, 5, 6);
var hvOneA   = spiSetup(25, 5, 6);
var hvOneB   = spiSetup(10, 5, 6);
var hvTwoA   = spiSetup(09, 5, 6);
var hvTwoB   = spiSetup(25, 5, 6);
var hvThreeA = spiSetup(11, 5, 6);
var hvThreeB = spiSetup(08, 5, 6);
*/

//Place all availible clients in array
var clients = [hvZeroA,
               hvZeroB,
               hvOneA,
               hvOneB,
               hvTwoA,
               hvTwoB,
               hvThreeA,
               hvThreeB
             ];

//spiSend(numToByte(2), hvThreeA);

var iv;
iv = setInterval(function () {
  for (var i in clients) {
    spiSend([1,1,0,0,1,0,0,0], clients[i]);
    //spiSend([0,0,0,0,0,0,0,0], clients[i]);
  }
}, 200);

var Msg = '';
var WebSocketServer = require('ws').Server,
wss = new WebSocketServer({port: 8010});
wss.on('connection', function(ws) {
  ws.on('message', function(message) {
    console.log('Received from client: %s', message);
    message = message.split();
    if(message[0] === "clientsAvailable"){
      ws.send(clients);
    } else if (message[0].substring(0,1) === "hv") {
      spiSend(voltageToByte(message[1]));
    }
  });
});

function spiSetup(csPin, mosiPin, sclkPin){
  var cs    = new GPIO(csPin  , 'out');
  var mosi  = new GPIO(mosiPin, 'out');
  var sclk  = new GPIO(sclkPin, 'out');
  var device = {cs:cs, mosi:mosi, sclk:sclk};
  return device;
}

function spiSend(data, device){
  // select device
  device.sclk.writeSync(0);
  device.cs.writeSync(0);
  // send bits 7..0
  for (i = 0; i < 8; i++){
    // set line high if bit is 1, low if bit is 0
    if (data[i]){
      device.mosi.writeSync(1);
    } else{
      device.mosi.writeSync(0);
    }
    // pull clock to indicate that bit value should be read
    device.sclk.writeSync(1);
    device.sclk.writeSync(0);
  }
  // deselect device
  device.cs.writeSync(1);
}

function voltageToByte(voltage){
  voltageNumber = Math.round(((((voltage-57.5)*-1)*256)/5)-1);
  voltageByte = numToByte(voltageNumber);
}

function numToByte(number){
  var byteString = (number).toString(2);
  var byte = [];
  for (var i = 0; i < 8; i++) {
    byte.push(byteString.charAt(i));
  }
  return byte;
}
