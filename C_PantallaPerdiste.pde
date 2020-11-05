class PantallaPerdiste{
//Atributos  
  PImage devil;
  int    x,y;
  int    radio;
//Constructor  
PantallaPerdiste(){
  devil  = loadImage("devil.jpg");
   x     = width/2;
   y     = height/2;
   radio = 50;
  }
//Funcionalidades  
void draw(){
  image(devil,0,0,scX(800),scY(600));
  }

 }
