class FBomb extends FBox {

  int timer;

  FBomb() {
    super(size, size);
    this.setFillColor(red);
    this.setPosition(character.getX()+size, character.getY()+size);
    timer=60;
  }

  void tick() {
    timer--;
    if (timer==0) {
      explode(); 
      world.remove(this);
      bomb= null;
    }
  }
  void explode() {
    for (int i=0; i<boxes.size(); i++) {
      FBox b = boxes.get(i);
      if (dist(this.getX(), this.getY(), b.getX(), b. getY())<150) {
        b.setStatic(false);
        vx=b.getX()-this.getX();
        vy=b.getY()-this.getY();
        b.setVelocity(vx*5, vy*5 );
      }
    }
  }
}
