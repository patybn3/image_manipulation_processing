/* Assigment 10-2
Student ID: 00318934
Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
24 November 2020 

2 - many_myimg: select an image and fill the entire canvas with multiple 
copies of the same image

This program runs at clicking the start bottom. 
It will print various copies of the same image on the background of the page.

The work I am submitting is my own in its entirety

*/
// create gloabal variable for the images to be used
PImage opera;
PImage opera2;
//built-in function setup holds the settings to run the program
void setup(){
  //gives a screen sized 590px by 590px
  size(590, 590);
  //uses first variable opera nad load the image on file
  opera = loadImage("poto.jpeg");
  //assigns the same image to the second variable opera2
  opera2 = loadImage("poto.jpeg");
}
//Built-in function draw runs the commands 
void draw(){
  //gives a background colored white
  background(255);
  /*loads the first image assigned to variable opera and places it at 127px
  on the x axis and 127px on the y axis*/
  image(opera, 127, 127);
  //calls custom function imageLoop to draw the other images on the screen
  imageLoop();
}
/*Custom function imageLoop creates a vertical and a horizontal line of
images*/
void imageLoop(){
  //gives the local  variables x and y
  int x;
  int y;
  /*gives x and y an initial value of 0 then loops x and y as long as it is
  less than the width or height of the page and gives the images a separation
  of 120 px between them*/
  for(x = 0; x < width; x+=120){
    for(y = 0; y < height; y+=120){
      /*calls the image assigned to variable opera2 twice, placing it at 
      the x value on the loop and then at the y value on the loop*/
      image(opera2, x, 0);
      image(opera2, 0, y);
      //resizes the image to 115x115px
      opera2.resize(115, 115);
    }
  }
}

//end.
