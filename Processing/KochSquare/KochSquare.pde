final float CONSTANT = 0.75;

void setup(){
  size(800, 800);
  fill(40, 110, 200);
  
  rectMode(CENTER);
  kochsquareRecursion(400, 400, 330, 8);
}

void kochsquareRecursion(float x, float y, float dia, int counter){
  if(counter > 0){
    counter--;
    
    //rect(x, y, dia, dia);
    kochsquareRecursion(x, y-(dia*CONSTANT), dia/2, counter);
    kochsquareRecursion(x, y+(dia*CONSTANT), dia/2, counter);
    kochsquareRecursion(x-(dia*CONSTANT), y, dia/2, counter);
    kochsquareRecursion(x+(dia*CONSTANT), y, dia/2, counter);
    rect(x, y, dia, dia);
  }
}
