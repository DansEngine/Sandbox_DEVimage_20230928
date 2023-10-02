//Global Variable
//
int DisplayHeight, DisplayWidth ;
float BGimageX, BGimageY, BGimageW, BGimageH;
PImage picBackground;
Boolean nightmode = false; //Note: clock and turn on automatically

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
  //rect( BGimageX, BGimageY, BGimageW, BGimageH );
  //
  //tint(255, 255); //Gray scale: 1/2 (i.e 128/256= 1/2)
  //tint(60, 60, 40); //Gray scale: (rgb)
  //image( picBackground, BGimageX, BGimageY, BGimageW, BGimageH );
  //
} //END
//
void draw() {
  //background(255);
  rect( BGimageX, BGimageY, BGimageW, BGimageH );
  //
  if (  ) tint(255, 255); //Gray scale: 1/2 (i.e 128/256= 1/2)
  if (  ) tint(64, 64, 40); //Gray scale: (rgb)
  image( picBackground, BGimageX, BGimageY, BGimageW, BGimageH );
  //
} //END DRAW
//
void keyPressed() {
  //Brightness
  //Nightmode, basic control is Boolean
} //END KP
//
void mousePressed() {
  //
} //END MP
//
//END MAIN Program
