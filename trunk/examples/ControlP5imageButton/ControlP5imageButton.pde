import controlP5.*;

ControlP5 controlP5;

int myColor = color(255);


void setup() {
  size(640,480);
  smooth();
  frameRate(30);
  controlP5 = new ControlP5(this);
  Button b = controlP5.addButton("buttonA",128,width/2 -24,height/2 -24,100,10);
  
  // replace the default controlP5 button with an image.
  //button.setImages(defaultImage, rolloverImage, pressedImage);
  b.setImages(loadImage("Arrow-Left.png"), loadImage("Arrow-Right.png"), loadImage("Refresh.png"));
  // adjust the size of the button and resize to the dimensions of the defaultImage
  b.updateSize();
}

void draw() {
  background(myColor);
}

public void controlEvent(ControlEvent theEvent) {
  println(theEvent.controller().name());
  
}

// function buttonA will receive changes from 
// controller with name buttonA
public void buttonA(int theValue) {
  println("a button event from buttonA: "+theValue);
  myColor = theValue;
}

