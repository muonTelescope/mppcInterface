//Nodejs server contoling GPIO for HV/LV
var mosiPin = 5;
var sclkPin = 6;
var powerOnPin = 21;
var powerOkPin = 20;
//Config for hvpia
//var gpioList = [22,23,24,10,09,25,11,08]
//Config for hvpib
//var gpioList = [02,03,04,14,15,17,18,27]
//config for sawaizTestPi
//var gpioList = [07,12,13,19,16,26,00,00];
// var positionList = ["FV1",
// "FV2",
// "FV3",
// "FV4",
// "FH1",
// "FH2",
// "FH3",
// "FH4"]

// var sawaizTestPi = {
//   'horizontal' : {
//     'FV1' : '07',
//     'FV2' : '12',
//     'FV3' : '13',
//     'FV4' : '19'
//   },
//   'vertical' : {
//     'FH1' : '16',
//     'FH2' : '26',
//     'FH3' : '00',
//     'FH4' : '00'
// }

//config for sawaizTestPi
var positionList = [
  ["FV1",55.41,07],
  ["FV2",56.85,12],
  ["FV3",53.40,13],
  ["FV4",55.03,19],
  ["FH1",57.29,16],
  ["FH2",56.98,26],
  ["FH3",54.54,00],
  ["FH4",57.42,00]
];


//**END CONFIGURATION**//
console.log("Server started");
var GPIO = require('onoff').Gpio;

//Place all availible clients in array
var clients = [];
for(device in positionList){
  //Create SPI Client where spiSetup(csPin, mosiPin, sclkPin)
  clients.push(spiSetup(positionList[device][2], mosiPin, sclkPin));
}

// var hvZeroA  = spiSetup(positionList[0][2], mosiPin, sclkPin);
// var hvZeroB  = spiSetup(gpioList[1], mosiPin, sclkPin);
// var hvOneA   = spiSetup(gpioList[2], mosiPin, sclkPin);
// var hvOneB   = spiSetup(gpioList[3], mosiPin, sclkPin);
// var hvTwoA   = spiSetup(gpioList[4], mosiPin, sclkPin);
// var hvTwoB   = spiSetup(gpioList[5], mosiPin, sclkPin);
// var hvThreeA = spiSetup(gpioList[6], mosiPin, sclkPin);
// var hvThreeB = spiSetup(gpioList[7], mosiPin, sclkPin);
//
// //Place all availible clients in array
// var clients = [hvZeroA,
//                hvZeroB,
//                hvOneA,
//                hvOneB,
//                hvTwoA,
//                hvTwoB,
//                hvThreeA,
//                hvThreeB
//              ];

//spiSend(numToByte(2), hvThreeA);

var powerOn = new GPIO(powerOnPin  , 'out');
//var powerOk = new GPIO(powerOkPin  , 'in');
powerOn.writeSync(0);

var iv;
iv = setInterval(function () {
  for (var i in clients) {
    //spiSend(voltageToByte(56.5), clients[i]);
    spiSend(numToByte(200), clients[i]);
    //console.log(voltageToByte(56.5));
    //spiSend([1,1,0,0,1,0,0,0], clients[i]);
  }
}, 200);

var Msg = '';
var WebSocketServer = require('ws').Server,
wss = new WebSocketServer({port: 8010});
wss.on('connection', function(ws) {
  ws.on('message', function(message) {
    console.log('Received from client: %s', message);
    message = message.split(" ");
    if(message[0] === "clientsAvailable"){
      ws.send("positionList "+JSON.stringify(positionList));
    } else if (message[0] === "hv") {
      spiSend(voltageToByte(Number(message[1])), message[2]);
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
    if (data[i] === '1'){
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
  return voltageByte;
}

function numToByte(number){
  var byteString = number.toString(2);
  var paddedByteString = ('00000000'+byteString).substring(byteString.length);
  var byte = paddedByteString.split('');
  return byte;
}
