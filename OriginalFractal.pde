  public void settings() {
    size(500, 500, P3D);
  }

  public void setup(){
      myFractal(200, 200, 110);
  }
  public void draw(){
   translate(200, 200, 100);
  }
  public void myFractal(int x, int y, int siz) {
    if (x < 20) {
      ellipse(x, y, siz, siz);
    }
    else {
      rotateZ(PI/8);
      ellipse(x, y, siz, siz);
      myFractal(x - 5, y, siz - 1);
    }
  }
