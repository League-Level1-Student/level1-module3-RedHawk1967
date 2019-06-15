void setup(){  
  size(1000,1000); 


} 
int pipex = 500;
int birdyVelocity = 5;
int gravity = 1;
int birdx = 500;
int birdy = 500;
void draw(){ 
background(239, 185,135);
fill(255,226,0);
stroke(255, 123, 15);
ellipse(birdx,birdy, 70, 70);
birdyVelocity += gravity;
birdy += birdyVelocity; 
fill(0, 255, 0);
rect(pipex,-200, 200, 500);
fill(0, 255, 0);
rect(pipex,600, 200, 500);
pipex-=2; 
if(mousePressed){
birdyVelocity=-10;
}



}
