void setup() {
  size (800, 800 );
  fill ( 75, 204, 57 );
  //strokeWeight(1);
  
  translate(400, 800);
  ellipse(0,0,25,25);
  lineRecursion(0, 0, 0, -300, 300, 2);
}

void lineRecursion(int x1, int y1, int x2, int y2, int len, int counter){
  if (counter > 0){
    counter--;
    fill(0);
    line(x1, y1, x2, y2);
    
    translate(0, -len);
    len = len/2;
    int a1 = x2;
    int b1 = y2;
    int a2 = x2 - len/2;
    int b2 = y2 - len/2;
    
    
    //rotate(-45.0*(PI/180));
    lineRecursion(0, 0, a2, b2, len, counter);
  }
}
