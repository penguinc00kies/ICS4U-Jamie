void setup() {
 size(800, 800); 
 fill (100, 40, 170);
 
 circleRecursion(0, 400, 800, 10);
}

void circleRecursion(float x, int y, float dia, int counter){
  if (counter > 0){
    counter--;
    circleRecursion(x+dia/2.5, y, dia/2, counter);
    ellipse(x, y, dia, dia);
  }
}
