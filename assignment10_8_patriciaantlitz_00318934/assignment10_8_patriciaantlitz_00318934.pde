/* Assigment 10-8
Student ID: 00318934
Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
25 November 2020 

8 - my_poster: Create a poster with your selfie in an n X n grid. Make sure 
you draw the grid. On the bottom right corner, place a smaller image of that 
selfie.

This program runs at clicking the start bottom. It should show a n x n grided
picture and a small version of the same picture on the right bottom corner
of the screen

The work I am submitting is my own in its entirety

*/
//calls variable of type PImage
PImage selfie;
//built-in function setup rund the settings for the program
void setup(){
  //gives the screen a size of 600px by 600px
  size(600, 600);
  //Loads the image on variable PImage called selfie
  selfie = loadImage("selfie.jpeg");
}
//built-in function draw holds the commands to run the program
void draw(){
  //gives the screen a black background color 
  background(0);
  /*calls the image "selfie" and draws it at x=24, y=24 and gives a size of
  570px by 570px*/
  image(selfie, 24, 24, 570, 570);
  //calls custom funtion "grid" to draw grid lines
  grid();
  //calls image "selfie" again to draw it in the bottom right of the page
  image(selfie, 12*width/16, 12*height/16, 130, 130);
}
//custom function grid draw the lines and numbers on the screen
void grid(){
  //gives the initial value of g to 15, "g" represents the space between the lines
  int g = 15;
  //sets a count for the numbers on the x axis to -1 to print starting at 0
  int countX = -1;
  //sets a count for the numbers on the y axis to 0 to print starting at 1
  int countY = 0;
  //gives the lines the color white
  stroke(255);
  /*for loop "i" will iterate between the width of the page adding the value
  of "g" to i*/
  for (int i = 8; i < width; i+=g) {
    //draws a line placing it at the value of i each time for the x axis
    line(i, 8, i, height-7);
    //adds one to variable countX
    countX++;
    //as long as countX is less then 39
    if(countX < 39){
    /*call custom function textCount to draw text, place it at the value of i
    +3 on the x axis and at 19px on the y*/
    textCount(countX, i+3, 19);
    }  
  }
  /*for loop "j" will iterate between the height of the page adding the value
  of "g" to j*/
  for (int j = 8; j < height; j+=g) {
    //draws a line placing it at the value of j each time for the y axis
    line(8, j, width-7, j);
    //adds one to variable countY
    countY++;
    //as long as countY is less then 39
    if(countY < 39){
    /*call custom function textCount to draw text, place it at the value of j
    +25 on the y axis and at 11px on the x*/
    textCount(countY, 11, j+25);
    }
  }
}
/*Custom function textCount draws the text numbers on the screen. It calls
for variable c  of type int which is the text to be printed, and variables
x and y for the location where the text will be places*/
void textCount(int c, int x, int y){
  //selects the color white for the text
  fill(255);
  //gives the text a size of 9px
  textSize(9);
  //draws the text calling the params
  text(c, x, y);
}

//end.
