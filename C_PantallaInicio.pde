class PantallaInicio{
//Atributos  
  PImage comenzar;
  PFont  font;
  String texto; 
  String press;
  int    x,y;
  int    radio;
//Constructor  
PantallaInicio(){ 
  comenzar = loadImage("comenzar.jpg");
  font     = loadFont("NirmalaUI-Bold-48.vlw");
  texto    = "DEVIL'S DOORS";
  press    = "haz click para empezar ";
  x        = width/2;
  y        = height/2;
  radio    = 85;
  }
//Funcionalidades  
void draw(){
  background(0);
  image(comenzar,0,0,scX(800),scY(600));
  fill(random(255),random(0),random(0));
  textFont(font);
  textAlign(CENTER);
  textSize(100);
  text(texto,scX(x),scY(y-100));
  textSize(25);
  text(press,scX(x),scY(y+200));
  } 

  }
