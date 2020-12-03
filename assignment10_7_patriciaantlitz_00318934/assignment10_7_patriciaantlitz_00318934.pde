/* Assigment 10-7
Student ID: 00318934
Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
24 November 2020 

7 - my_selfie: take a selfie and display it on the canvas with four 
different effects, e.g., change colors, distort it, etc.

This program runs at clicking the start bottom. It should show 4 "selfies" with
different image effects

The work I am submitting is my own in its entirety

*/
//create image variables for the image used
PImage selfie0, selfie1, selfie2;

//built-in function setup holds the setting to run the program
void setup(){
  //gives the screen a size of 500px by 500px
  size(500, 500);
  //loads the same image 3 times using the variable PImage
  selfie0 = loadImage("selfie.jpeg");
  selfie1 = loadImage("selfie.jpeg");
  selfie2 = loadImage("selfie.jpeg");
  
}
//Built-in function draw holds the commands to run the program
void draw(){
  //draws the original image at x and y 0
  image(selfie0, 0, 0, width/2, height/2); 
  //runs custom function effect3
  effect3();
  //runs custom function effect2
  effect2();
   //runs custom function effect1
  effect1();
  //removes the program loop
  noLoop();

}
//custom function effect1
void effect1(){
  //selects image 0 and inverts the color
  selfie0.filter(INVERT);
  //places at the half top of the page
  image(selfie0, width/2, 0, width/2, height/2);
}
//custom function effect 2
void effect2(){
  //selects image 2 and gives it a grayscale effect
  selfie2.filter(GRAY);
  //places the image bottom half of the page to the left
  image(selfie2, 0, height/2, width/2, height/2);

}
//custom function effect3
void effect3(){
  //selects image 2 and gives it a posterize effect
  selfie1.filter(POSTERIZE, 4);
  //places the image in the bottom half to the right of the screen
  image(selfie1, width/2, height/2, width/2, height/2);

}

//end
