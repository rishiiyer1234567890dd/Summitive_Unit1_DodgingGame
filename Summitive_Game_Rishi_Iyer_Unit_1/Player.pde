class player{
  float x;
  float y;
  int size;
  player(){
    x = mouseX;
    y = mouseY;
    size = 20;
  }
  void draw(){
    background(255,255,255);
    ellipse(mouseX, mouseY, size, size); 
  }
 
}
