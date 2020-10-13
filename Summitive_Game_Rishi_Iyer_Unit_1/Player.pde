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
    ellipse(mouseX, mouseY, size, size); 
  }
 
}
