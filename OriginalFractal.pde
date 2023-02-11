  float co = (float)(Math.random() * 5 + 2);
  public void settings() {
    size(500, 500);
  }
  public void mouseClicked() {
    co = (int)(Math.random() * 7 + 1);
  }
  public void setup(){
    frameRate(35);
  }
  public void draw(){
    background(210, 220, 250);
    noStroke();
    fill(255);
    ellipse(250, 220, 500, 440);
    myFractal(140, 250, 190, 0, co);
    myFractal(360, 250, 190, 0, co);
    fill(0);
    arc(250, 350 +  10, 55, 50, PI, TWO_PI);
    triangle(370, -10, 350, 50, 500, 80);
    rotate(-PI/2.5);
    ellipse(30, 300, 150, 280);
  }
  public void myFractal(int x, int y, float siz, float n, float c) {
    if (siz < 50) {
      fill(0);
      ellipse(x, y, 20, 20);
      rect(x - 12, y - 15, 10, 5);
      rect(x + 3, y - 15, 10, 5);
    }
    else {
      fill(250 - c * n, 250 - n * (int)(Math.random() * 5), 250 - c * n, c * 15);
      arc(x, y, siz, siz, PI + n, TWO_PI + n);
      myFractal(x, y, siz - 2, n + 1, c);
    }
  } 
  
