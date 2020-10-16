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
    fill(col1,col2,col3);
    ellipse(x, y, size, size);
    y = y+speed;
    float distance = dist(x, y, mouseX, mouseY);
    if (distance < 25){
    health = health - 1;
    
  }
  if (y>800){      
      temp_score = temp_score + 1;
      y = 10;
    }
    if (temp_score == score){
     score = score + 1; 
    }
    
  }
}
