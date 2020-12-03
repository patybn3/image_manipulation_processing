/* Assigment 10-6
Student ID: 00318934
Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
24 November 2020 

6 - random_image: select an image and have it randomly appear on the 
canvas. 

This program runs at clicking the start bottom. It should show a random image
from a list of images on file.

I have used other sources, as detailed in my submitted source file.
https://forum.processing.org/one/topic/random-image.html

*/

//creates an array that stores the images on file
//selects number 5 which is the amount  of images saved
PImage[] imageArr = new PImage[5];

//setup holds  the setting to run the program
void setup() {
  //given a screen size 500px by 500px
  size(500, 500);
  //loop between the array length to find images
  for (int i=0; i<imageArr.length; i++) {
    /*load images for each place in the array, images called "img", to be
    saved on file as img0, img1, etc of jpeg format*/
    imageArr[i] = loadImage( "img" + i + ".jpeg");
  }
}

//Function draw runs the commands for the program
void draw() {
  /*selects a random image out of the five on the array and place it at 
  0x and 0y, and make it the size of the screen*/
  image(imageArr[(int)random(5)], 0, 0, width, height);
  //removes the loop so the image doesnt change
  noLoop();
}

//end.
