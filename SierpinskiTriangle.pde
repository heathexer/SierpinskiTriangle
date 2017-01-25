int[] p1 = {400, 0};
int[] p2 = {0, 800};
int[] p3 = {800, 800};

public void setup() {
  background(25);
  size(800, 800);
  strokeWeight(.1);
  tRianGle(p1, p2, p3, 8);
}

public void tRianGle(int[] t1, int[] t2, int[] t3, int level) {
  final int[] np1 = {(t1[0]+t2[0])/2, (t1[1]+t2[1])/2};
  final int[] np2 = {(t2[0]+t3[0])/2, (t2[1]+t3[1])/2};
  final int[] np3 = {(t3[0]+t1[0])/2, (t3[1]+t1[1])/2};
  fill(35*level);
  triangle(t1[0], t1[1], t2[0], t2[1], t3[0], t3[1]);
  if(level > 1) {
    tRianGle(t1, np1, np3, level-1);
    tRianGle(t2, np2, np1, level-1);
    tRianGle(t3, np3, np2, level-1);
  }
}

class Point {
  int[] myPos = new int[2];
  Point(int[] pos) {
    myPos[0] = pos[0];
    myPos[1] = pos[1];
  }

  void show() {
    ellipse(myPos[0], myPos[1], 2, 2);
  }

  int[] getPos() {
    return myPos;
  }
}
