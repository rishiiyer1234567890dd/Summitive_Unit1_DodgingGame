boolean isAlive = true;
int scene = 0;
int health = 0;
int score = 1;
int topScore = 0;
int lvl = 0;
int temp_score = 0;
float y = random(0,-100);
enemy[] myEnemys = new enemy[100];
player Player = new player();
void setup() {
  size(800, 800);
  for (int i = 0; i < 100; i++)
  {
    myEnemys[i] = new enemy(y);
  }
}
void draw() {
  // Scene 0 (Start)
  if (scene == 0) {
    background(0, 0, 0);
    fill(255, 255, 255);
    textAlign(CENTER, CENTER);
    textSize(15);
    text("Press TAB to start", 400, 400);
  }
  //Scene 1 (Lvl Select)
  if (scene == 1) {
    background(255, 255, 255);
    fill(255);
    rect(100, 100, 200, 100);
    rect(450, 100, 200, 100);
    rect(300, 250, 200, 100);
    textAlign(CENTER, CENTER);
    textSize(15);
    fill(0);
    text("LVL 1", 200, 150);
    text("LVL 2", 550, 150);
    text("LVL 3", 400, 300);
    text("Score: " + topScore, 400, 50);
    text("LVL 1 = 1 life(Free). LVL 2 = 2 lives(10 Score). LVL 3 = 3 lives(30 Score).", 400, 750);
    if (scene == 1) {
      if ((mouseX>100) && (mouseX<300) &&(mouseY>100) && (mouseY<200) ) {
        lvl = 1;
        health = 1;
        scene = 2;
      }
      if ((mouseX>450) && (mouseX<650) &&(mouseY>100) && (mouseY<200) && (topScore>= 10)&& (mousePressed)) {
        lvl = 2;
        health = 2;
        scene = 2;
      }
      if ((mouseX>500) && (mouseX<700) &&(mouseY>250) && (mouseY<350)&& (topScore>= 30)&& (mousePressed)) {
        lvl = 3;
        health = 3;
        scene = 2;
      }
    }
  }
  //Scene 2 (The game)
  if ((scene == 2)&&(isAlive == true)) {
    Player.draw();
    for (int i = 0;i < score; i++) {
      myEnemys[i].draw();
    }
    if (health < 1){
      scene = 3;
      
    }
  }

    //Scene 3 (Game Over)
    if (scene == 3) {
      topScore = score + topScore;
      background(0, 255, 0);
      textAlign(CENTER, CENTER);
      textSize(30);
      text("Game Over :( Press TAB to continue", 400, 400);
    }
  }


  void keyPressed() {
    if ((scene == 0)||(scene == 3)) {
      if (key == TAB) {
        scene = 1;
        score = 1;
      }
    }
  }
