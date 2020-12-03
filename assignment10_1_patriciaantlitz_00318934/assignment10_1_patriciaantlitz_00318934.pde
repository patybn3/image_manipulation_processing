/* Assigment 10-1
Student ID: 00318934
Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
24 November 2020 

1 - myimag: select an image, and fill the entire canvas with it.

This program runs at clicking the start bottom. 
It will print an image on the background of the page.

The work I am submitting is my own in its entirety

*/

//global variable of type PImage calls the name of the image to be used
PImage queen;

//Built-in function setup holds the settings to run this program
void setup(){
  //give a screen size of 900px wide by 500px tall
  size(900, 500);
  //call variable queen and load image on file to it
  queen = loadImage("download.jpeg");
}
//built-in function draw run the program's commands
void draw(){
  /*function background calls the image stored on variable queen and display
  as the background*/
  background(queen);
}

//end. 
