import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer sfx[] = new AudioPlayer[7];
PImage images[] = new PImage [7];

void setup()
{
  fullScreen();
  images[0] = loadImage("drum.png");
  images[1] = loadImage("trumpet.png");
  images[2] = loadImage("sax.png");
  images[3] = loadImage("bd.png");
  images[4] = loadImage("piano.png");
  images[5] = loadImage("cad.png");
  images[6] = loadImage("ppap.png");
  minim = new Minim(this);
  sfx[0] = minim.loadFile("drum.wav");
  sfx[1] = minim.loadFile("trumpet.wav");
  sfx[2] = minim.loadFile("saxophone.mp3");
  sfx[3] = minim.loadFile("bd.mp3");
  sfx[4] = minim.loadFile("piano.mp3");
  sfx[5] = minim.loadFile("cad.mp3");
  sfx[6] = minim.loadFile("ppap.mp3");
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
 if(keyPressed && key == '4')
 {
   sfx[3].play();
   image(images[3], width/10000, height/15);
 }
 if(keyPressed && key == '5')
 {
   sfx[4].play();
   image(images[4], width/5, height/3);
 }
 if(keyPressed && key == '6')
 {
   sfx[5].play();
   image(images[5], width/3, height/5);
 }
 if(keyPressed && key == '7')
 {
   sfx[6].play();
   image(images[6], width/6, height/4);
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
  if(key == '4')
  {
    sfx[3].pause();
  }
  if(key == '5')
  {
    sfx[4].pause();
  }
  if(key == '6')
  {
    sfx[5].pause();
  }
  if(key == '7')
  {
    sfx[6].pause();
  }
}