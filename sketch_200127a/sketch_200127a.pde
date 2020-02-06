import fisica.*;
boolean wKey, aKey, sKey, dKey;
PImage map;
int timer;
int t=0;
color black = color(0);
color red = color(255, 0, 0);
color green = color(0, 255, 0);
color blue = color(0, 0, 255);
color white = color(255);


PImage[] runLeft;
PImage[] runRight;
PImage[] idle;
PImage[] jump;
PImage[] currentAction;
int costumeNum = 0;
int frame = 0;

int x = 0;
int y = 0;
int size = 50;

FBox character;

float vx=0, vy=0;
FWorld world;
void setup() {
  timer=0;
  size(1200, 800);
  Fisica.init(this);
  world = new FWorld(0,0,10000,2500);
  world.setGravity(0, 1100);

  map = loadImage ("map.png");


  //load world

  loadWorld();
  character();
}
void draw() {

  timer++;
  t=timer/60;
  
  
  background(255);
  textSize(25);
fill(255,100,100);
text("time:"+t,50,50);


  pushMatrix();
translate(-character.getX()+width/2,-character.getY()+height/2);
  world.step();
  world.draw();

  popMatrix();


  if (aKey)vx=vx-20 ;
  if (dKey)vx=vx+20;
  if (vx>=400)vx=400;
  if (vx<=-400)vx=-400;  
  if (vx>=1&&dKey==false)vx=vx-10;
  if (vx<=-1&&aKey==false)vx=vx+10  ;

  character.setVelocity(vx, character.getVelocityY());
  println(aKey);
  //jumping
  ArrayList<FContact> contacts = character.getContacts();
  if (wKey && contacts.size()>0 && character.getVelocityY()==0) character.setVelocity(character.getVelocityX(), -700);
  if(character.getVelocityX()==0)vx=0;
  println(character.getVelocityX());
}
void keyPressed() {
  if (key == 's' || key == 'S') sKey=true;
  if (key == 'a' || key == 'A') aKey=true;
  if (key == 'd' || key == 'D') dKey=true;
  if (key == 'w' || key == 'W') wKey=true;
}
void keyReleased() {
  if (key == 's' || key == 'S') sKey=false;
  if (key == 'a' || key == 'A') aKey=false;
  if (key == 'd' || key == 'D') dKey=false;
  if (key == 'w' || key == 'W') wKey=false;
}
