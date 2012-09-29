/*
 Robot Deniro, v2
 Alex Samuel
 September 28, 2012
 Meet Robot Deniro.
 Code for eyeballs adapted from OOP Robot by
 Lisa Furze.  Source code can be found here:
 http://www.openprocessing.org/sketch/57130.
 */

PImage robopic;
PImage instrux;

int numRobos = 2;

void setup() {
  size(600, 600);
  smooth();
  noStroke();
  robopic = loadImage("robotdeniro.png");
  instrux = loadImage("directions.png");
  
  //setup robo
  robo = new Robot[numRobos];
  for (int i = 1; i < numRobos; i++) {
    robo[i] = new Robot(175, 200, 0.01);
  }

  Libraries();
}

void draw() {
  background(0);

  for (int i = 1; i < numRobos; i++) {
    robo[i].shiftyeyes();
    robo[i].display();
    robo[i].speak();
  }
}

