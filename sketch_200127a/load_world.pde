void loadWorld() {
  int x = 0;
  int y = 0;
  int size = 50;
  while (y<map.height) {

    color c = map.get(x, y);
  
  if (c==black){
    FBox b = new FBox(size,size);
    b.setFillColor(black);
    b.setPosition(x*size,y*size);
    b.setFriction(1);
    b.setStaticBody(true);
    world.add(b);
 
  }
   if (c==red){
        FBox b = new FBox(size,size);
    b.setFillColor(red);
    b.setPosition(x*size,y*size);
    b.setFriction(1);
    b.setStaticBody(true);
    world.add(b);
  }
   if (c==green){
    
  }
   if (c==blue){
    
  }
   if (c==white){
    
  }
  
  
  
  
  

    x++;
    if (x==map.width) {
      x=0;
      y++;
    }
  }
}
