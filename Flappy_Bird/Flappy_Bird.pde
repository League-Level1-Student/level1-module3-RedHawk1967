     PImage back;
     PImage pipeBottom;
     PImage pipeTop;
     PImage bird;
boolean intersectsPipes() { 
  if (birdy < pipe1Height && birdx > pipex && birdx < (pipex+200)) {
    return true;
  } else if (birdy > pipey && birdx > pipex && birdx < (pipex+200)) {
    return true;
  } else { 
    return false;
  }
}


void setup() {  
  size(1000, 1000);
 back = loadImage("flappyBackground.jpg");
            pipeBottom = loadImage("bottomPipe.png");
            pipeTop = loadImage("topPipe.png");
            bird = loadImage("bird.png");
            bird.resize(50,50);

}
void checkTeleport() { 
  if (pipex<-200) {
    teleport();
Score++;  
}
}



void teleport() {

  pipex=1000;
  pipe1Height = (int) random(100, 500);
  pipey = pipe1Height+ pipeGap;
  
}

int Score = 0;
int deaths = 0;
int pipeGap = 250;
int pipe1Height = (int) random(100, 500);
int pipey = pipe1Height+ pipeGap;
int pipex = 500;
int birdyVelocity = 5;
int gravity = 1;
int birdx = 150;
int birdy = 500;
void draw() { 

  if (intersectsPipes()== true) {
    deaths++; 
    teleport();
  }
 background(back);
            image (pipeBottom,250,375);
            image (pipeTop,250,-130);
            image (bird, 250, 300);

 
  fill(255, 226, 0);
  stroke(255, 123, 15);
  ellipse(birdx, birdy, 70, 70);
  if (birdyVelocity<100) {
    birdyVelocity += gravity;
  }

  birdy += birdyVelocity; 
  //pipe 1
  fill(0, 255, 0);
  rect(pipex, 0, 200, pipe1Height);
  //pipe 2
  fill(0, 255, 0);
  rect(pipex, pipey, 200, 1000);
  pipex-=2; 
  if (mousePressed) {
    birdyVelocity=-13;
  }
  checkTeleport();
  fill(255, 0, 0);
  textSize(35);
  text("Deaths "+deaths, 450, 50);
  text("Score "+Score, 300, 50); 
 
  
  
  if (birdy>=1000) {
    birdyVelocity = Math.max((int)(-birdyVelocity*1.1), -100);
    //birdy=0;
  }
  if (birdy<=0) {
    birdyVelocity = Math.min((int)(-birdyVelocity*1.1), 100);
  }
}
