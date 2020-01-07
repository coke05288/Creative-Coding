//The MIT License (MIT) - See Licence.txt for details

//Copyright (c) 2013 Mick Grierson, Matthew Yee-King, Marco Gillies



// This is based on the example AnimationBasic
// but adds a pause functionality.
// I've only commented the new bits to make 
// it clearer. 

int currentPosition = 0;
PImage [] images;

// a boolean variable to control
// whether the animation is playing
boolean playing = false;

void setup()
{
    images = loadImages("Animation_data/movie", ".jpg", 134);
     size(images[0].width, images[0].height); //comment for javascript
    //size(420,280); // uncomment for javascript version
}

void draw()
{
  
  image(images[currentPosition], 0, 0);
  // the if statement means that
  // we only move to the next frame 
  // if playing is true
  if(playing)
  {
    currentPosition += 1;
    if(currentPosition >= images.length)
    {
       currentPosition = 0;
    }
  }
}

// when the mouse is pressed
// toggle playing 
// (if it is true it will become
// false and vice versa)
void mousePressed()
{
  playing = !playing;
}


