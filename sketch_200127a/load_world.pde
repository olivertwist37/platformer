void loadWorld() {
  int x = 0;
  int y = 0;
  int size = 50;

  if (run==0) {
    while (y<map.height) {

      color c = map.get(x, y);

      if (c==black) {
        FBox b = new FBox(size, size);
        b.setFillColor(black);
        b.setPosition(x*size, y*size);
        b.setFriction(1);
        b.setStaticBody(true);
        b.setRestitution(0);
        world.add(b);
        boxes.add(b);
      }
      if (c==red) {
        FBox b = new FBox(size, size);
        b.setName("win");
        b.setFillColor(red);
        b.setPosition(x*size, y*size);
        b.setFriction(1);
        b.setStaticBody(true);
        world.add(b);
      }
      if (c==green) {
            FBox b = new FBox(size, size);
        b.setName("death");
        b.setFillColor(green);
        b.setPosition(x*size, y*size);
        b.setFriction(1);
        b.setStaticBody(true);
        world.add(b);
      }
      if (c==blue) {
      }
      if (c==white) {
      }






      x++;
      if (x==map.width) {
        x=0;
        y++;
      }
    }
  } else if (run==1) {

    //map 2=====================================================================================

    while (y<map2.height) {

      color c = map2.get(x, y);

      if (c==black) {
        FBox b = new FBox(size, size);
        b.setFillColor(black);
        b.setPosition(x*size, y*size);
        b.setFriction(1);
        b.setStaticBody(true);
        b.setRestitution(0);
        world.add(b);
        boxes.add(b);
      }
      if (c==red) {
        FBox b = new FBox(size, size);
        b.setName("win");
        b.setFillColor(red);
        b.setPosition(x*size, y*size);
        b.setFriction(1);
        b.setStaticBody(true);
        world.add(b);
      }
      if (c==green) {
          FBox b = new FBox(size, size);
        b.setName("death");
        b.setFillColor(green);
        b.setPosition(x*size, y*size);
        b.setFriction(1);
        b.setStaticBody(true);
        world.add(b);
      }
      if (c==blue) {
      }
      if (c==white) {
      }






      x++;
      if (x==map2.width) {
        x=0;
        y++;
      }
    }
  }
}
