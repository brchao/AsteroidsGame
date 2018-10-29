class Spaceship extends Floater  
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
	public Spaceship(){
		corners = 4;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = 292;
		yCorners[0] = 292;
		xCorners[1] = 316;
		yCorners[1] = 300;
		xCorners[2] = 292;
		yCorners[2] = 308;
		xCorners[3] = 296;
		yCorners[3] = 300;
	}
}
