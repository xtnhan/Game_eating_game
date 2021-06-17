class Player {

  float x;
  float y;
  float s;
  int score;



  Player (float xx, float yy) {
    x= xx;
    y = yy;
    s = 30;
  }

  void draw () {

    circle (x, y, s);
    fill(0,0,0);
    textSize(40);
    text (score,250,50);
    
    if (x <= -40) {
    x = 540;
    }
    if (x >= width + 50) {
    x = 0;
    }
    if (y <= -40) {
    y = 540;
    }
    if (y >= height + 50) {
    y = 0;
    }
    
  }

  void move () {
    if (key =='a') {
      moveLeft ();
    }
    if (key =='d') {
      moveRight ();
    }
    if (key =='w') {
      moveUp();
    }
    if (key =='s') {
      moveDown();
    }
  }



  void moveLeft () {
    x -= 2;
  }
  void moveRight () {
    x += 2;
  }
  void moveUp() {
    y -= 2;
  }
  void moveDown () {
    y += 2;
  }

  boolean isEaten (Food f) {
    if (dist (x, y, f.x, f.y) <= s/2) {
      f.isEaten = true;
      if (f.isEaten) {
      score = score + 1;
      }
      
    }
    return f.isEaten == true;
  }
}
