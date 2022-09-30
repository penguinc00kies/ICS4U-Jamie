void setup() {
  size ( 600, 600 );
  noStroke();
  background ( 80, 187, 199 );
  fill ( 179, 248, 253 );
  
  kochSnowflake(300, 53.6, 100, 400, 500, 400, 9);
}

void kochSnowflake(float x1, float y1, float x2, float y2, float x3, float y3,float counter) {
  if (counter > 0) {
    counter--;
    triangle(x1, y1, x2, y2, x3, y3);
    
    float ax = (x2-x1)/3;
    float ay = (y2-y1)/3;
    
    ////ellipse (x1+ax*2, y1+ay*2, 15, 15);
    //ellipse (x2, y1+ay, 15, 15);
    ///ellipse (x1+ax, y1+ay, 15, 15);
    
    
    float bx = (x1-x3)/3;
    float by = (y1-y3)/3;
    
    //ellipse (x3+bx, y3+by, 15, 15);
    ///ellipse (x3+bx*2, y3+by*2, 15, 15);
    //ellipse (x3, y3+by*2, 15, 15);
    
    float cx = (x3-x2)/3;
    float cy = (y3-y2)/3;
    float cy1 = (y2-y1)/3;
    
    //kochSnowflake(
    
    ////ellipse (x2+cx, y2+cy, 15, 15);
    //ellipse (x2+cx*2, y2+cy*2, 15, 15);
    //ellipse (x1, y2+y1/2.2, 15, 15);
    
    kochSnowflake(x1+ax*2, y1+ay*2, x2, y1+ay, x1+ax, y1+ay, counter);
    kochSnowflake(x3+bx, y3+by, x3+bx*2, y3+by*2, x3, y3+by*2, counter);
    kochSnowflake(x1, y2+cy1, x2+cx, y2+cy, x2+cx*2, y2+cy*2, counter);
    
    kochSnowflake(x1, y1, x3+bx*2, y3+by*2, x1+ax, y1+ay, counter);
    kochSnowflake(x1+ax*2, y1+ay*2, x2+cx, y2+cy, x2, y2, counter);
    kochSnowflake(x3+bx, y3+by, x2+cx*2, y2+cy*2, x3, y3, counter);
    
    //float dx = ax/3;
    //float dy = ay/3;
    
    //ellipse (x1+dx, y1+dy, 15, 15);
    //kochSnowflake(x1, y1, x1+ax, y1+ay, x3+bx*2, y3+by*2, counter);
    
  }
}
