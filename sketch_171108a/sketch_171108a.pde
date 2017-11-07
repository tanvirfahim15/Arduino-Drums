import processing.serial.*;

import ddf.minim.*;

Minim minim,minim2;
AudioPlayer player,player2;
Serial myPort;  // The serial port

void setup() {
  printArray(Serial.list());
  myPort = new Serial(this, Serial.list()[0], 9600);
   minim = new Minim(this);
   minim2 = new Minim(this);
    player = minim.loadFile("sn909v1.wav");
    player2 = minim.loadFile("hi crash.wav");
   
    
}

void draw() {
  while (myPort.available() > 0) {
    String inBuffer =myPort.readStringUntil('\n'); 
    
   if (inBuffer != null) {
     
     float x=float(inBuffer);
      println(x);
      if(x>0){
       background(255);
      player.rewind();
      player.play(); 
      }
      else{
       
  background(0);
      player2.rewind();
      player2.play(); 
      }
      
  }
  }
}
