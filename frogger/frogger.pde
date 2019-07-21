void setup() { 
size(800,600);
}
int frogx = 400;
int frogy= 300;

void keyPressed()
{
    if(key == CODED){
        if(keyCode == UP)
        {
            frogy-=20;
        }
        else if(keyCode == DOWN)
        {
           frogy+=20;
        }
        else if(keyCode == RIGHT)
        {
            frogx+=20;
        }
        else if(keyCode == LEFT)
        {
           frogx-=20;
        }
    }
}

void draw() {
  //frog
  background(255,0,10);
  fill(90,255,0);
  stroke(0,255,0);
  ellipse(frogx,frogy,50,50);
  
}
