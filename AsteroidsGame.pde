//your variable declarations here
Spaceship bob = new Spaceship();
Star [] stars;
ArrayList <Asteroid> asteroidList;
ArrayList <Bullet> bulletList;

public void setup() 
{
	size(600,600);
	frameRate(300);
	stars = new Star[200];
	for(int i = 0; i < stars.length; i++){
		stars[i] = new Star();
	}
	
	asteroidList = new ArrayList <Asteroid>();
	for(int i = 0; i < 19; i++){
		asteroidList.add(i, new Asteroid());
	}
	bulletList = new ArrayList <Bullet>();


  //your code here
}
public void draw() 
{
  	background(0);
  	for(int i = 0; i < stars.length; i++){
		stars[i].show();
	}
	for(int i = 0; i < asteroidList.size(); i++){
		asteroidList.get(i).show();
		asteroidList.get(i).move();
		if(dist(bob.getX(),bob.getY(),asteroidList.get(i).getX(),asteroidList.get(i).getY()) < 20){
			asteroidList.remove(i);
		}
	}
	for(int i = 0; i < bulletList.size(); i++){
			bulletList.get(i).show();
			bulletList.get(i).move();
		for(int j = 0; j < asteroidList.size(); j++){

			if(dist(bulletList.get(i).getX(),bulletList.get(i).getY(),asteroidList.get(j).getX(),asteroidList.get(j).getY()) < 20){
				bulletList.remove(i);
				asteroidList.remove(j);
				break;
			}

		
		}
	}
  	bob.show();
  	bob.move();

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
		bob.turn(-10);
	}
	if(key == 'd'){
		bob.turn(10);
	}
	if(key == 'w'){
		bob.accelerate(.1);
	}
	if(key == 's'){
		bob.accelerate(-.1);
	}
	if(key == ' '){
		bulletList.add(new Bullet(bob));
	}
	if(key == 'q'){
		for(int i = 0; i < 19; i++){
			asteroidList.add(i, new Asteroid());
		}
	}

}

