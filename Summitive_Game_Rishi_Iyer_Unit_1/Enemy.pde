class enemy{
 float x;
 float y;
 int size;
 int speed;
 float col1;
 float col2;
 float col3;
 enemy(float _y){
  x = random(800);
  y = _y;
  speed = 2;
  col1 = random(255);
  col2 = random(255);
  col3 = random(255);
  size = 5;
 }
  void draw(){
    ellipse(x, y, size, size);
  }
  void move(){
    y += speed;
    
  }
   void hit(){
    float distance = dist(x, y, mouseX, mouseY);
    if (distance < 25){
      health -= 1;
    }
    
  }
}
