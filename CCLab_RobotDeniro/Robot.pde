class Robot {
  float x;
  float y;
  float eyeballX;
  float eyeballY;
  float easing;

  Robot(float tempX, float tempY, float tempEasing) {
    x = tempX;
    y = tempY;
    eyeballX = tempX;
    eyeballY = tempY;
    easing = tempEasing;
  }


  /////////////////////////////////
  void shiftyeyes() {
    if (mouseX > eyeballX && eyeballX < x+7) {
      eyeballX += mouseX * easing;
    } 
    else if (mouseX < eyeballX && eyeballX > x-7) {
      eyeballX -= mouseX * easing;
    } 
    else if (mouseY > eyeballY && eyeballY < y+7) {
      eyeballY += mouseY * easing;
    } 
    else if (mouseY < eyeballY && eyeballY > y-7) {
      eyeballY -= mouseY * easing;
    }
  }

  /////////////////////////////////
  void display() {

    //load robot
    image(robopic, 0, 0);

    //eyes
    fill(255);
    stroke(0);
    ellipse(x-10, y-4, 30, 30);
    ellipse(x+25, y-4, 30, 30);

    fill(72, 118, 255);
    ellipse(eyeballX-10, eyeballY-4, 8, 8);
    ellipse(eyeballX+25, eyeballY-4, 8, 8);


    //buttons
    buttons();
  }

  /////////////////////////////////
  void speak() {
    //TTS function

    //define input cues
    String question = (cp5.get(Textfield.class, "input").getText());
    String hi = "hi";
    String name = "what's your name?";
    String from = "where are you from?";
    String talk = "you talking to me?";
    String sign = "what's your sign?";


    //define output
    if (mousePressed == true) {
      if (dist(mouseX, mouseY, 350, 300) <= 100) {

        //options
        if (question.equals(hi)) {
          tts.speak("Greetings");
        }

        if (question.equals(name)) {
          tts.speak("Robot DeNiro.");
        }

        if (question.equals(from)) {
          tts.speak("Brooklyn, of course");
        }

        if (question.equals(talk)) {
          tts.speak("You talkin' to me? You talkin' to me? Then who the hell else are you talking two? You talking to me? I'm the only one here.");
        }
        
        if (question.equals(sign)){
          tts.speak("I am ay leo. Call me.");
        }
      }
    }
  }
  /////////////////////////////////
  void buttons() {
    fill(18, 153, 205);
    stroke(6, 170, 207);
    rect(350, 325, 120, 30);
    fill(255);
    text("directions", 365, 347);
    
    if (dist(mouseX, mouseY, 400, 325) <= 25) {
      image(instrux, 25, 475);
      //rect(25, 500, 550, 50);
    }
  }
}

