void Reset(){
    timer=0;
  size(1200, 800);
  Fisica.init(this);
  world = new FWorld(0, 0, 10000, 2500);
  world.setGravity(0, 1100);


  map = loadImage ("map.png");
  map2 = loadImage ("map2.png");

}
