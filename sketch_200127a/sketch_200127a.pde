
import fisica.*;

int[] scores = new int[5];
int score;

int[] scores2 = new int[5];
int score2;

boolean wKey, aKey, sKey, dKey;
PImage map;
PImage map2;
int timer;
boolean winner = false;
int t=0;
int run;
color black = color(0);
color red = color(255, 0, 0);
color green = color(0, 255, 0);
color blue = color(0, 0, 255);
color white = color(255);
//bomb---
FBomb bomb = null;
//bomb---
ArrayList<FBox> boxes = new ArrayList<FBox>();

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
int mode =0;
FBox character;

float vx=0, vy=0;
FWorld world;
void setup() {
  timer=0;
  size(1200, 800);
  Fisica.init(this);
  world = new FWorld(0, 0, 10000, 2500);
  world.setGravity(0, 1100);

  map = loadImage ("map.png");
  map2 = loadImage ("map2.png");

  //load world
  //if(run==0&&mode==1){
  //loadWorld();
  //character();
  //}else if(run==1&&mode==1){

  //}

  for (int i=0; i<scores.length; i++) {
    scores[i] = 1000;
  }

  for (int i=0; i<scores2.length; i++) {
    scores2[i] = 1000;
  }
}

void draw() {
  if (mode==0) {
    intro();
  }
 else if (mode ==3) {
    leaderboards();
  }
 else if (mode==1) {

    if (!winner) {
      timer++;
      t=timer/60;
    }else if (mode==2){
     death(); 
    }


    background(255);
    textSize(25);
    fill(255, 100, 100);
    text("time:"+t, 50, 50);


    pushMatrix();
    translate(-character.getX()+width/2, -character.getY()+height/2);
    world.step();
    world.draw();





    popMatrix();

    //------bomb
    if (sKey && bomb == null) {
      bomb = new FBomb();
      world.add(bomb);
    }
    if (bomb != null) {
      bomb.tick();
    }
    //-----bomb end

    //=======movement
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
    for (FContact c : contacts) {
      if (c.contains("win")){
        winner = true;
      if (run==0) {
        score=timer;
        addNewScore(score);
      }
      if (run==1) {
        score2=timer;
        addNewScore(score2);
      }
      }
      if (c.contains("death")){
       mode = 2;
      }
    }
    if (wKey && contacts.size()>0 && character.getVelocityY()==0) character.setVelocity(character.getVelocityX(), -700);
    if (character.getVelocityX()==0)vx=0;
    println(character.getVelocityX());
    //==========movement end
  }
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
