import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer sfx[] = new AudioPlayer[3];
PImage images[] = new PImage [3];
boolean sound1 = false;
boolean sound2 = false;
boolean sound3 = false;

void setup()
{
  fullScreen();
  images[0] = loadImage("drum.png");
  images[1] = loadImage("trumpet.png");
  images[2] = loadImage("sax.png");
  minim = new Minim(this);
  sfx[0] = minim.loadFile("drum.wav");
  sfx[1] = minim.loadFile("trumpet.wav");
  sfx[2] = minim.loadFile("saxophone.mp3");
}

void draw()
{
  background(0);
  if(sound1 == true);
  {
   sfx[0].play();
  }
  
  if(sound2 == true);
  {
   sfx[1].play();
  }
  
  if(sound3 == true);
  {
   sfx[2].play();
  }
}