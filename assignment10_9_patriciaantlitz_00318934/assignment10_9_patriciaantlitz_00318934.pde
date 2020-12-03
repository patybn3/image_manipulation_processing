/* Assigment 10-9
Student ID: 00318934
Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
25 November 2020 

9 - my_mover: Pick a word and have it move from left to right continuously

This program runs at clicking the start bottom. 

The work I am submitting is my own in its entirety

*/
//selects a font from the library
PFont f;
//Built-in function setup holds the settings of the program
 void setup() {
  //given a screen size 700px by 500px
  size(700, 500);
  //loads the select font into the variable
  f = loadFont("BanglaMN-Bold-48.vlw");
}

//Function draw runs the commands for the program
void draw() {
  //gives the screen a black background
  background(0);
  //runs custom function ifText to write text on the screen
  ifText();
}

//select initial values for the  x axis
int x = 0;
int xLoc = 400;
//selects the color of the text
color white = color(255);
//custom function write text holds the setting to write a text
void writeText(int i){
  //gives a string to be printed
  String myString = "IMAGINATION!";
  //fills the text with the color white
  fill(white);
  //selects the font loaded and a size
  textFont(f, 36);
  //calls the string, the param as the location for x and the a location for y
  text(myString, i, 150);
}
//custom function ifText holds the if statement to make the text bounce
void ifText(){
//if cariable x is greater or equal to 0
  if(x >= 0){
    //erase everything by writing a background function
  background(0);
  //write text using writeText function and passing the location as x
  writeText(x);
  //add one to x
  x+=1;
  } 
  // if x is greater or equal to 400px
  if(x >= 400) {
    //cover everything with the background
   background(0);
   //write the text using the xloc variable to move the text backwards
   writeText(xLoc);
   //remove on of xloc until reaches 0
   xLoc-=1;
  }  
  //once xloc reaches 0
  if ( xLoc <= 0 ) {
    //reset the value of x
   x=0;
   //reset the value of xloc
   xLoc=400;
 }
}

//end.
