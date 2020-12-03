/* Assigment 10-5
Student ID: 00318934
Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
24 November 2020 

5 - my_four: select an image and draw four times on the entire canvas 
with different colors.

This program runs at clicking the start bottom. 


I have used other sources, as detailed in my submitted source file.
https://www.openprocessing.org/sketch/693390

*/


// create global variable for the image to be used
PImage louise;
//global variable for loop
int num = 3;
//space between images for loop
int space = 400;

//built-in function setup holds the settings to run the program
void setup(){
  //gives a screen sized 1045px by 530px
  size(800, 800);
  //uses first variable opera nad load the image on file
  louise = loadImage("louise.png");
}
//Built-in function draw runs the commands 
void draw(){
  //gives a background in a random color
  background(random(255),random(255),random(255));
  /*calls custom function imageLoop to draw the other images on the screen
  should print 4 images horizontally and 4 vertically*/
  for (int x=0; x < width; x += space){
   for (int y=0; y < height; y += space){
     imageLoop(x,y);
   }
   delay(500);
  }  
}
/*Custom function imageLoop creates a vertical and a horizontal line of
images*/
void imageLoop(int x, int y){
 //gives a random color to the images
 tint(random(255),random(255),random(255),150);
 for(int a=0; a < num; a++){
 image(louise,x+a*0.5,y,space,space);
 }
}

//end.
 
