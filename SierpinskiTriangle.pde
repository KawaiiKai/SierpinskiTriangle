import processing.core.PApplet;

public class Sketch extends PApplet {

  public void settings() {
    size(500, 500);
  }

  public void setup(){
    //empty!
  }
  public void draw(){
    sierpinski(200, 200, 400);
  }
  public void mouseDragged(){ //optional

  }
  public void sierpinski(int x, int y, int len) 
{
if(len <= 20){
  triangle(x-len/2, y+len/2, x, y-len/2, x+len/2, y+len/2);
} else {
  sierpinski(x-len/4, y+len/4, len/2);
  sierpinski(x, y-len/4, len/2);
  sierpinski(x+len/4, y+len/4, len/2);
}
}
}
