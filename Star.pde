class Star //note that this class does NOT extend Floater
{
	private int myX, myY, myColor, mySize;
  	Star(){
  		myX = (int)(Math.random()*600);
  		myY = (int)(Math.random()*600);
  		myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  		mySize = (int)(Math.random()*5)+2;
  	}
  	public void show(){
  		noStroke();
  		fill(myColor);
  		ellipse(myX, myY, mySize, mySize);
  }
}
