class Asteroid extends Floater
{
	public void setX(int x){myCenterX = x;}
	public int getX(){return (int)myCenterX;}
	public void setY(int y){myCenterY = y;}
	public int getY(){return (int)myCenterY;}
	public void setDirectionX(double x){myDirectionX = x;}
	public double getDirectionX(){return (double)myDirectionX;}
	public void setDirectionY(double y){myDirectionY = y;}
	public double getDirectionY(){return (double)myDirectionY;}
	public void setPointDirection(int degrees){myPointDirection = degrees;}
	public double getPointDirection(){return (double)myPointDirection;}
	private int rotationSpeed, mySize, myX, myY;
	public Asteroid(){
		rotationSpeed = (int)(Math.random()*11)-5;
		mySize = (int)(Math.random()*10)*15;
		myX = (int)(Math.random()*600);
		myY = (int)(Math.random()*600);
	}
	public void move(){
		rotate(rotationSpeed);
	}
	public void show(){
		ellipse(myX,myY,mySize,mySize);
	}
}