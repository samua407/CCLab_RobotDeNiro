
//Define Robo
Robot [] robo;


//ttslib setup
import guru.ttslib.*;
TTS tts;

//control P5 setup
import controlP5.*;
ControlP5 cp5;
String textValue = "";

void Libraries() {
  //ttslib setup
  tts = new TTS();

  //Control P5 Setup
  PFont font = createFont("arial", 20);

  cp5 = new ControlP5(this);

  cp5.addTextfield("input")
    .setPosition(350, 275)
    .setSize(120, 30)
    .setFont(font)
    .setFocus(true)
    .setColor(color(255, 255, 255))
    ;  

  textFont(font);
}

