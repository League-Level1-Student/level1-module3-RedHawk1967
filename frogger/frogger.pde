Car car1 = new Car(300,100,50,5);
Car car2 = new Car(300,200,50,5);
Car car3 = new Car (300,300,50,5);

void setup() { 
size(800,600);
}
int frogx = 400;
int frogy= 300;

void keyPressed()
{
    if(key == CODED){
        if(keyCode == UP && frogy>0)
        {
            frogy-=20;
        }
        else if(keyCode == DOWN && frogy <600)
        {
           frogy+=20;
        }
        else if(keyCode == RIGHT && frogx<800 )
        {
            frogx+=20;
        }
        else if(keyCode == LEFT&& frogx>0)
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
  car1.display();
    car2.display();
    car3.display();
    car1.move();
    car2.move();
    car3.move();

}
class Car{
int x ;
int y ;
int size ;
int speed ;
void move() { 
x-=speed;
if(x>=width||x<=0){
x = 800;
}

}

void display()
  {
    fill(0,255,0);
    rect(x , y,  size, 50);
  }


Car(int x,int y, int size, int speed ) { 
this.x = x;
this.y = y;
this.size = size;
this.speed = speed;


}




}
