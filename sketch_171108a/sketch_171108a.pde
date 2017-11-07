import processing.serial.*;
import ddf.minim.*;

Serial port;
float br=0,br2=0;
int inc=0;
Minim minim;
Minim minim2;
AudioPlayer player;
AudioPlayer player2;

void setup()
{
  size(1000,800);
  port= new Serial(this,"COM3",9600);
  port.bufferUntil('\n');
  // we pass this to Minim so that it can load files from the data directory
  minim = new Minim(this);
  minim2 = new Minim(this);
  
  // loadFile will look in all the same places as loadImage does.
  // this means you can find files that are in the data folder and the 
  // sketch folder. you can also pass an absolute path, or a URL.
  player = minim.loadFile("Crash.wav");
  player2 = minim2.loadFile("r.mp3");
}



void serialEvent (Serial port)
{
  br2=br;
  br=float(port.readStringUntil('\n'));
  if(br>20)
  {player.rewind();
    //player.play();
    player2.rewind();
    player2.play();
  print(br," ");
  
  }

}