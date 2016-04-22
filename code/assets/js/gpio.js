// Let us open a web socket
var ws = new WebSocket("ws://131.96.4.199/ws");

ws.onopen = function(){
  ws.send("clientsAvailable");
};

ws.onmessage = function (evt) {
  var received_msg = evt.data;
//  alert(received_msg);
};

ws.onclose = function(){
  // websocket is closed.
  alert("Connection is closed...");
};

function setPsA(){
  var voltageZeroA =  document.getElementById("voltageA").value;
  ws.send("hvZeroA "+voltageZeroA);
  document.getElementById("psA").innerHTML = "Power Supply A voltage byte ="+voltageZeroA;
}

function setPsB(){
  var voltageBRaw =  document.getElementById("voltageB").value;
  var voltageBByte = Math.round(((voltageBRaw-52.5)/5)*256);
  ws.send("voltageBByte="+voltageBByte);
  document.getElementById("psB").innerHTML = "Power Supply B voltage byte ="+voltageBByte;
}

function sendRaw(){
  ws.send(document.getElementById("console").value);
}
