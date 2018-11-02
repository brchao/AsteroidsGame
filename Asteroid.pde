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
	private float rotationSpeed;
	private int myX, myY;
	public Asteroid(){
		myDirectionX = (Math.random()*1)-1;
		myDirectionY = (Math.random()*1);
		rotationSpeed = 1;
		myColor = color(100);
		corners = 6;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -16;
		yCorners[0] = 0;
		xCorners[1] = -8;
		yCorners[1] = 14;
		xCorners[2] = 8;
		yCorners[2] = 14;
		xCorners[3] = 16;
		yCorners[3] = 0;
		xCorners[4] = 8;
		yCorners[4] = -14;
		xCorners[5] = -8;
		yCorners[5] = -14;
		myCenterX = (int)(Math.random()*600);
		myCenterY = (int)(Math.random()*600);
	}
	public void move(){
		
		super.move();
		turn((int)rotationSpeed);
	}
}