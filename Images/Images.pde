//Global Variable
//
int DisplayHeight, DisplayWidth ;
float BGimageX, BGimageY, BGimageW, BGimageH;
PImage picBackground;
//
void setup () {
  fullScreen(); //displayWidth, displayHeight
  //size(X>Y, Y<X); //landscape
  //Copy Display Orientation
  DisplayWidth = displayWidth ;
  DisplayHeight = displayHeight ;
  //
  //[float(setup)]
  BGimageX = DisplayWidth*0 ;
  BGimageY = DisplayHeight*0 ;
  BGimageW = DisplayWidth-1 ;
  BGimageH = DisplayHeight-1 ;
  picBackground = loadImage ("../ImagesUsed/LandScape/photo-1503614472-8c93d56e92ce.jpg");
  //
  //population
  //
  //DIVs
  rect( BGimageX, BGimageY, BGimageW, BGimageH );
  //
} //END
//
void draw() {
  image( picBackground, BGimageX, BGimageY, BGimageW, BGimageH );
  //
} //END DRAW
//
void keyPressed() {
  //
} //END KP
//
void mousePressed() {
  //
} //END MP
//
//END MAIN Program
