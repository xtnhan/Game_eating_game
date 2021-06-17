class Food {

  float x;
  int dx;
  float y;
  int dy;  
  float s;
  boolean isEaten;

  Food (float xx, float yy) {
    x = xx;
    y = yy;
    s = 5;
    isEaten = false;
  }


  void draw () {
    circle (x, y, s);
    x = x + dx;
    y = y + dy;
  }

  void update () {
    if (x >=width || x<=0) {
      dx = -dx;
    } 
    if (y <= 0 ||y >= height) {
      dy = -dy;
    } 
    if (isEaten) {

      reset();
      isEaten = false;
    }
  }
  void reset () {
    if (isEaten) {
      x = random(400);
      y = random(400);
      dx = int(random (-5, 5));
      dy =int(random (-5, 5));
    }
  }
}
