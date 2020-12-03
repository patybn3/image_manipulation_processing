/* Assigment 10-10
Student ID: 00318934
Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
25 November 2020 

10 - mouse_draw: When you click the mouse, draw an image. You should be able 
to click all over the canvas and have the image appear where the mouse is 
clicked.

This program runs at clicking the start bottom. A random image should show
on the screen, at the click of the mouse, in any given point the image should
change.

The work I am submitting is my own in its entirety

*/

//loads an array of images with 13 images
PImage[] canvasArr = new PImage[13];

//setup holds the settings of this program
void setup() {
  //given a screen size 300px by 300px
  size(300, 300);
}
//function draw holds the commands that run this program
void draw() {
  //calls function imageDraw which loops the array to load all images
  imageDraw();
  /*selects a random image out of the 13 on the array and place it at 
  0x and 0y, and make it the size of the screen*/
  image(canvasArr[(int)random(13)], 0, 0, width, height);
  //removed the loop
  noLoop();
}

//Custom function imageDraw
void imageDraw(){

 //loop between the array length to find images
  for (int i=0; i<canvasArr.length; i++) {
    /*load images for each place in the array, images called "canvas", to be
    saved on file in the jpeg format*/
    canvasArr[i] = loadImage( "canvas" + i + ".jpeg");
  }
}
// sets the release of the mouse to true
boolean mouseReleased = true;
//function mousePressed
void mousePressed(){
  //if mousePressed is true
  if (mousePressed == true){
    //draw a random image from the array to change the image
  image(canvasArr[(int)random(13)], 0, 0, width, height);
  //and remove the image loop
  noLoop();
  }
}
//function mouseReleased
void mouseReleased(){
  //if mouseReleased is true (boolean)
    if (mouseReleased == true) {
      //add the loop back to change the image
    loop();
  }
}

//end.
