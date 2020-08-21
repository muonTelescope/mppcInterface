// Use this to log data to a file from interupts.
// node logdata.js <duration (ms)> <file location>
// node logData.js 60000 ./logs

// Imports
const fs = require('fs');                   // Access the filesystem
const Coincidence = require("coincidence"); // Coincidence module, pulled from git

// If there are two additional arguments 
if(process.argv.length == 4){
    // Check if arg 3 is a number
    if(isNaN(process.argv[2])){
        console.log("First parameter must be a number");
        process.exit(1);
    } else if (!fs.existsSync(process.argv[3])){
        console.log("Path " + process.argv[3] + " does not exist, please create or check the path");
        process.exit(1);
    }
} else {
    console.log("Not enough arguments, two are required");
    console.log("node logdata.js <duration (ms)> <file location>");
    process.exit(1);
}

var config = {};
//Coincidence: Intruept pins to log counts from
config.pins = [
    ['GPIO17', 17],
    ['GPIO18', 18],
    ['GPIO27', 27],
    ['GPIO22', 22],
    ['GPIO23', 23]
];

// File is uniquely named by start time
var fileName = new Date().toISOString()  + ".log";

// Header is created through pins, prepended with date append with newline
var header = "date,";
for (var pin in config.pins) {
    header += config.pins[pin][0];
    header += ",";
}
console.log(header);
header += "\n";

//Write just the header to the file creating it in the process
fs.writeFile(process.argv[3] + "/" + fileName, header, function (err) {
    if (err) {
        throw err;
    }
    console.log("Logging started in " + fileName);
});


logging = beginLog(Number(process.argv[2]));

function beginLog(duration) {

    var coincidence = new Coincidence(config.pins);

    function logData() {
        var data = coincidence.log();
        var logLine = new Date().toISOString() + ",";
        for(var entry in data){
            logLine += data[entry];
            logLine += ",";
        }
        // Print it out before adding the new line 
        console.log(logLine);
        logLine += "\n";
        // Append the line to the file
        fs.appendFile(process.argv[3] + "/" + fileName, logLine, function (err) {
        });

    }

    //Every x miliseconds, write the current counts to file
    return {
        data: { filename: fileName },
        interval: setInterval(logData, duration)
    }
}

// Stop logging and gracefully exit on ^C
process.on('SIGINT', function() {
  console.log("Exiting Gracefully, releasing all pins.");
  clearInterval(logging.interval);
  process.exit();
});
