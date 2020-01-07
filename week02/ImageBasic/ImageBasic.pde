//The MIT License (MIT) - See Licence.txt for details

//Copyright (c) 2013 Mick Grierson, Matthew Yee-King, Marco Gillies



// Create a variable to hold our image
PImage img;

void setup()
{
  // load the image  from file
  img = loadImage("movie44.jpg");
  // set the size of the screen to be 
  // the same as the image
  //size(img.width, img.height);
  size(1000, 1000);
}

void draw()
{
  // display the image
  int std_ratio = 100;
  int img_height = std_ratio*img.height/img.width;
  imageMode(CENTER);
  image(img, mouseX, mouseY, std_ratio, img_height);
}