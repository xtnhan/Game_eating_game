Player p = new Player (250, 450);
Food f = new Food (100, 100);

void setup() {
  size (500, 500);
}

void draw () {
  background(255, 255, 255);
  p.draw();
  p.move();
  p.isEaten(f);
  


  f.draw();
  f.update();

  println (f.isEaten);
}
