// Let us open a web socket
var ws = new WebSocket("ws://192.168.100.218/ws");

ws.onopen = function(){
  ws.send("clientsAvailable");
};

ws.onmessage = function (evt) {
  var received_msg = evt.data;
  received_msg = received_msg.split(" ");
  if(received_msg[0] === "positionList"){
    var positionList = JSON.parse(received_msg[1]);
    for(i in positionList){
      addHVControl(positionList[i][0], positionList[i][1]);
    }
  }

};

ws.onclose = function(){
  // websocket is closed.
  //alert("Connection is closed...");
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

function sendVoltage(device){
  var voltage = document.getElementById(device).value
  ws.send("hv" + " " + voltage + " " + device);
}

function sendRaw(){
  ws.send(document.getElementById("console").value);
}

function addHVControlTest(){
  hodoscopeLocation = "FV1";
  datasheetVoltage = 54.6;
  addHVControl(hodoscopeLocation,datasheetVoltage);
}

function addHVControl(device ,datasheetVoltage) {

  var hvControlSection = document.createElement("section");
  var imgLink = document.createElement("a");
  var img = document.createElement("img");
  var contentDiv = document.createElement("div");
  var innerDiv = document.createElement("div");
  var header = document.createElement("h2");
  var discription = document.createElement("p");
  var actionList = document.createElement("ul");
  var inputListelement = document.createElement("li");
  var inputDiv = document.createElement("div");
  var input = document.createElement("input");
  var buttonListelement = document.createElement("li");
  var setVoltageButton = document.createElement("a");

  hvControlSection.appendChild(imgLink);
  imgLink.appendChild(img);
  hvControlSection.appendChild(contentDiv);
  contentDiv.appendChild(innerDiv);
  innerDiv.appendChild(header);
  innerDiv.appendChild(discription);
  innerDiv.appendChild(actionList);
  actionList.appendChild(inputListelement);
  actionList.appendChild(buttonListelement);
  inputListelement.appendChild(inputDiv);
  inputDiv.appendChild(input);
  buttonListelement.appendChild(setVoltageButton);

  imgLink.className += " image";
  contentDiv.className += " content";
  innerDiv.className += " inner";
  actionList.className += " actions";
  inputDiv.className += " 6u 12u$(xsmall)";
  setVoltageButton.className += " button";

  var buttonString = "Set Voltage for " + device;
  var onClickIdentifier = "sendVoltage(" +  device + ")";

  var deviceLabel = document.createTextNode(device + " finger voltage.");
  var dsVoltage = document.createTextNode("Voltage for MPPC " + datasheetVoltage + "V.");
  var buttonLabel = document.createTextNode(buttonString);

  header.appendChild(deviceLabel);
  discription.appendChild(dsVoltage);
  discription.appendChild(dsVoltage);
  setVoltageButton.appendChild(buttonLabel);

  imgLink.setAttribute("href", "#");
  img.setAttribute("alt", "");
  img.setAttribute("data-position", "center center");
  imgLink.style.backgroundImage = "url('assets/images/hodoscopeBlank.png')";
  imgLink.style.backgroundPosition = "50% 0%";
  img.setAttribute("style", "background-image");
  input.setAttribute("type", "text");
  input.setAttribute("id", device);
  input.setAttribute("name", "voltage");
  input.setAttribute("value", datasheetVoltage);
  input.setAttribute("placeholder", "Voltage");
  setVoltageButton.setAttribute("onclick", onClickIdentifier);

  document.getElementById("one").appendChild(hvControlSection);
}
