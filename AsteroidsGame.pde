//your variable declarations here
Spaceship bob = new Spaceship();
Star [] stars;
public void setup() 
{
	size(600,600);
	frameRate(300);
	stars = new Star[100];
	for(int i = 0; i < stars.length; i++){
		stars[i] = new Star();
	}
  //your code here
}
public void draw() 
{
  	background(0);
  	bob.show();
  	bob.move();
  	for(int i = 0; i < stars.length; i++){
		stars[i].show();
	}
}
public void keyPressed(){
	if(key == 'e'){
		bob.setDirectionX(0);
		bob.setDirectionY(0);
		bob.setX((int)(Math.random()*600));
		bob.setY((int)(Math.random()*600));
		bob.setPointDirection((int)(Math.random()*360));

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

