//The MIT License (MIT) - See Licence.txt for details

//Copyright (c) 2013 Mick Grierson, Matthew Yee-King, Marco Gillies



// I didn't discuss this example in the lecture
// It is based on AnimationBasic but adds the
// ability to scrub through the animation by
// moving the mouse. 
// I've only commented the new bits to make 
// it clearer.


int currentPosition = 0;
PImage [] images;

void setup()
{
    size(960, 640);
    images = loadImages("Animation_data/movie", ".jpg", 135);
}

void draw()
{
  float imageWidth = (height*images[currentPosition].width)/images[currentPosition].height;
  image(images[currentPosition], 0, 0, imageWidth, height);
  // I've removed currentPosition+=1
  // because the animation is controlled by 
  // the mouse
  if(currentPosition >= images.length)
  {
     currentPosition = 0;
  }
  
}


void mouseDragged()
{
  // map the x position of the mouse from 
  // the width of the screen to the length of
  // the animation
  // and use that as the current position
  currentPosition = (int)map(mouseX, 0, width, 0, images.length-1);
  // this makes sure that the currentPosition
  // doesn't go below 0 or above the length 
  // of the animation
  currentPosition = constrain(currentPosition, 0, images.length-1);
}


