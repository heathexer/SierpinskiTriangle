float[] p1 = {0, -259.8075};
float[] p2 = {-300, 259.8075};
float[] p3 = {300, 259.8075};

public void setup() {
  background(25);
  size(800, 800);
  translate(400, 400);
  strokeWeight(.1);
  tRianGle(p1, p2, p3, 8);
}

public void tRianGle(float[] t1, float[] t2, float[] t3, int level) {
  final float[] np1 = {(t1[0]+t2[0])/2, (t1[1]+t2[1])/2};
  final float[] np2 = {(t2[0]+t3[0])/2, (t2[1]+t3[1])/2};
  final float[] np3 = {(t3[0]+t1[0])/2, (t3[1]+t1[1])/2};
  fill(35*level);
  triangle(t1[0], t1[1], t2[0], t2[1], t3[0], t3[1]);
  if(level > 1) {
    tRianGle(t1, np1, np3, level-1);
    tRianGle(t2, np2, np1, level-1);
    tRianGle(t3, np3, np2, level-1);
  }
}
