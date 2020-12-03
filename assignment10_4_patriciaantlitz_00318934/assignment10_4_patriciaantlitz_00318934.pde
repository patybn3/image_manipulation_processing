/* Assigment 10-4
Student ID: 00318934
Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
24 November 2020 

4 - my_animal: select the image of an animal and draw it with different 
colors just like Andy Warhol did with his zebra

This program runs at clicking the start bottom. It should show an image of
a tiger filled with different random colors which changes every .7secs.


I have used other sources, as detailed in my submitted source file.
https://www.openprocessing.org/sketch/899993

*/


/* create global variables for the images to be used, these are the same
image which have parts of it removed to show the colors of the previous*/

PImage back; 
PImage eyes; 
PImage stripes0;
PImage stripes1;
PImage stripes2;
PImage stripes3;
PImage body;
PImage body1;
//number to be iterated
int num = 3; 

//built-int function setup holds the settings of thise program
void setup(){
  //give an screen sized 600px by 600px
  size(600, 600);
  //loadImages
  back = loadImage("back.png");
  eyes = loadImage("eyes.png"); 
  stripes0 = loadImage("stripes0.png"); 
  stripes1 = loadImage("stripes1.png"); 
  stripes2 = loadImage("stripes2.png");
  stripes3 = loadImage("stripes3.png");
  body = loadImage("body.png");
  body1 = loadImage("body1.png");
}

//built-in function draw holds the commands to run the program
void draw() {
  //gives random color to the image background
 background(random(255),random(255),random(255));
  //calls function imageLoop to create the image and places at x 0 and y 0
 imageLoop(0, 0);
//gives the loop a delay of .7sec
 delay(700);
}

//Custom function imageLoop creates the image on the screen
void imageLoop(int x, int y){

  //gives the first image, "back" a random color
 tint(random(255),random(255),random(255),150);
 //for loop draws the image
 for(int i=0; i < num; i++){
 image(back, x+i*0.5, y, width, height);
 }
 //gives the image, "stripes0" a random color
 tint(random(255),random(255),random(255),150);
 //for loop draws the image
 for(int k=0; k < num; k++){
 image(stripes0, x+k*0.5, y, width, height);
 }
 //gives the image, "stripes1" a random color
 tint(random(255),random(255),random(255),150);
 //for loop draws the image
 for(int l=0; l < num; l++){
 image(stripes1, x+l*0.5, y, width, height);
}
//gives the image, "stripes2" a random color
   tint(random(255),random(255),random(255),150);
   //for loop draws the image
 for(int l=0; l < num; l++){
 image(stripes2, x+l*0.5, y, width, height);
}
//gives the image, "stripes3" a random color
 tint(random(255),random(255),random(255),150);
 //for loop draws the image
 for(int m=0; m < num; m++){
 image(stripes3, x+m*0.5, y, width, height);
}
//gives the image, "body" a random color
 tint(random(255),random(255),random(255),150);
 //for loop draws the image
 for(int n=0; n < num; n++){
 image(body, x+n*0.5, y, width, height);
}
//gives the image, "body1" a random color
 tint(random(255),random(255),random(255),150);
 //for loop draws the image
 for(int o=0; o < num; o++){
 image(body1, x+o*0.5, y, width, height);
}
//gives the image, "eyes" a random color
 tint(random(255),random(255),random(255),150);
 //for loop draws the image
 for(int j=0; j < num; j++){
 image(eyes, x+j*0.5, y, width, height);
 }
  }
  
  //end.
