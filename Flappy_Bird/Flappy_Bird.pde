void setup() {  
  size(1000, 1000);
}
void teleport() {
  if (pipex<=0) {
    pipex=1000;
    
}
  if (birdy>=1000) {
    birdyVelocity = Math.max((int)(-birdyVelocity*1.1),-100);
    //birdy=0;
  }
  if (birdy<=0) {
    birdyVelocity = Math.min((int)(-birdyVelocity*1.1),100);
  }
}
int pipe1Height = 400;
int pipey = 600;
int  pipex = 500;
int birdyVelocity = 5;
int gravity = 1;
int birdx = 500;
int birdy = 500;
void draw() { 
  background(239, 185, 135);
  fill(255, 226, 0);
  stroke(255, 123, 15);
  ellipse(birdx, birdy, 70, 70);
  if (birdyVelocity<100) {
    birdyVelocity += gravity;
  }

  birdy += birdyVelocity; 
  //1
  fill(0, 255, 0);
  rect(pipex,0, 200, pipe1Height);
  //2
  fill(0, 255, 0);
  rect(pipex,pipey, 200, 500);
  pipex-=2; 
  if (mousePressed) {
    birdyVelocity=-15;
  }
  teleport();
}
