//your variable declarations here
Spaceship bob = new Spaceship();
Star [] stars;
ArrayList <Asteroid> asteroidList;

public void setup() 
{
	size(600,600);
	frameRate(300);
	stars = new Star[200];
	for(int i = 0; i < stars.length; i++){
		stars[i] = new Star();
	}
	
	asteroidList = new ArrayList <Asteroid>();
	asteroidList.add(new Asteroid());
	asteroidList.add(new Asteroid());
	asteroidList.add(new Asteroid());
	asteroidList.add(new Asteroid());
	asteroidList.add(new Asteroid());
	asteroidList.add(new Asteroid());
	asteroidList.add(new Asteroid());
	asteroidList.add(new Asteroid());
	asteroidList.add(new Asteroid());
	asteroidList.add(new Asteroid());


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


}

