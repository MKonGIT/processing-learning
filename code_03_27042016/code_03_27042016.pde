// processing learning
// talk to and with the arduino
//
// MK 27.4.16
//


// declarations going here --------

import processing.serial.*;
Serial myPort;                       // The serial port
int val;

// setup() will run only once a processing programm is called
//

void setup() {
 println("Start"); 
 
  // Print a list of the serial ports, for debugging purposes:
  printArray(Serial.list());
  
  // Open whatever port is the one you're using.
  String portName = Serial.list()[1];
  myPort = new Serial(this, portName, 9600);
  println("--> ", portName);
}

// from here the programm will un forever
// draw is the generic called routine
void draw() {
  // println("Running only once");
  
  if (myPort.available() >0 ) {
    val = myPort.read();
    print(val);
    
  }
  
  // exit means exit 
  //
  // exit();
}