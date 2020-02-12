  int z,b;
void intro(){
  


  background (200,200,255);
  fill(800,140,100);
  textSize(40);
  text("speedrun",500,200);
  

 for (int i=0; i<scores.length; i++) {
    text(scores[i], 150, 120+60*i);
  }

 for (int i=0; i<scores2.length; i++) {
    text(scores2[i], 600, 120+60*i);
  }
  
ellipse(220,600,99+z,99+z);
image(map,300,575);
  if (dist(mouseX,mouseY,220,600)<100){
    z=5;
  }else{
    z=1;
  }
  ellipse(650,600,99+b,99+b);
  image(map2,730,575);
    if (dist(mouseX,mouseY,650,600)<100){
    b=5;
  }else{
    b=1;
  }
  

  
  
  
  
}
void mouseReleased(){
  
   if (dist(mouseX,mouseY,220,600)<100){
run=0;
mode=1;
loadWorld();
character();
  }
  
   if (dist(mouseX,mouseY,650,600)<100){
 run=1;
 mode=1;
 loadWorld();
 character();
  }
  
  
  
}
