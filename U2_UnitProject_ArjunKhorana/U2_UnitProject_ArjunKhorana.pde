import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer sfx[] = new AudioPlayer[3];
PImage images[] = new PImage [3];

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
}

void keyPressed()
{
 if(keyPressed && key == '1')
 {
   sfx[0].play();
   image(images[0], width/3, height/3);
 }
 if(keyPressed && key == '2')
 {
   sfx[1].play();
   image(images[1], width/3, height/3);
 }
 if(keyPressed && key == '3')
 {
   sfx[2].play();
   image(images[2], width/3.5, height/4);
 }
}

void keyReleased()
{
  if(key == '1')
  {
    sfx[0].pause();
  }
  if(key == '2')
  {
    sfx[1].pause();
  }
  if(key == '3')
  {
    sfx[2].pause();
  }
}