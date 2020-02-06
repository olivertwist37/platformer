void character(){
  character = new FBox(50,50);
  character.setPosition(500,50);
  
  character.setDensity(1);
   character.setFriction(0);
    character.setRestitution(0);
     character.setFill(200);
      world.add(character);
      character.setStatic(false);
character.setRotatable(false);

}
