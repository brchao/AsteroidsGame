//your variable declarations here
Spaceship bob = new Spaceship();
public void setup() 
{
	size(600,600);
	frameRate(300);
  //your code here
}
public void draw() 
{
  background(255,0,0);
  bob.show();
  bob.move();

}
public void keyPressed(){
	if(key == 'e'){
		bob.setDirectionX(0);
		bob.setDirectionY(0);
		bob.setX((int)(Math.random()*600));
		bob.setY((int)(Math.random()*600));

	}
	if(key == 'a'){
		bob.turn(-5);
	}
	if(key == 'd'){
		bob.turn(5);
	}
	if(key == 'w'){
		bob.accelerate(.1);
	}
	if(key == 's'){
		bob.accelerate(-.1);
	}


}

