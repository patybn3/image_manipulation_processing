/* Assigment 10-3
Student ID: 00318934
Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
24 November 2020

3 - andy_tomato:  make a poster with the logo of various types of
chocolates (e.g. Lindt, Dove) in the same style as Andy Warhol did
with the tomato juice can

This program runs at clicking the start bottom.
It will print various copies of the same image on the background of the page
following Andy Warhol's tomato juice can art piece.
The brand chosen was "Garoto" a Brazilian chocolate manufacturer, biggest brand
in the country located in Vila Velha, Espirito Santo, my home state, founded
by a German immigrant, Heinrich Mayerfreund in 1929. Sold worldwide under
surnames, such as Regal Dynasty sold at Walgreens Pharmacies, and under the
main brand, Garoto at latinx supermarkets.
The company was acquired by Nestle in 2002 for a total of 250 Millions dollars
in a ugly battle between the Brazilian Government which did not wanted the
chocolate monopoly to be sold for a worldwide competitor, and the Mayerfreund
family which maintained their position that the decision of selling or not
was theirs only as the owners of the manufacturer. It resulted in an agreement
between Nestle and the family, in which the brand Nestle, after the purchase,
became the main owner of the  manufacturer  but the brand is still managed
by the Mayerfreund family and separately operating on the same site.

The work I am submitting is my own in its entirety

*/

// create global variable for the image to be used
PImage garoto;
//built-in function setup holds the settings to run the program
void setup(){
  //gives a screen sized 1045px by 530px
  size(1045, 530);
  //uses first variable opera nad load the image on file
  garoto = loadImage("chocgaroto.jpeg");

}
//Built-in function draw runs the commands
void draw(){
  //gives a background colored white
  background(240);
  /*calls custom function imageLoop to draw the other images on the screen
  should print eight images horizontally and 4 vertically*/
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
  for(x = 10; x < width; x+=130){
    for(y = 10; y < height; y+=130){
      //Pictures shadows, removes the stroke of the shape
      noStroke();
      //fills the "shadow" with gray
      fill(190);
      //draws rectangles as shadows
      rect(x, y+13, 110, 110);
      //picture borders
      fill(0);
      rect(x-3, y-3, 116, 116);
      /*calls the image assigned to variable opera2 twice, placing it at
      the x value on the loop and then at the y value on the loop*/
      image(garoto, x, y);
      //resizes the image to 115x115px
        garoto.resize(110, 110);
    }
  }
}

//end.
