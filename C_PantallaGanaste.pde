class PantallaGanaste{
//Atributos
  PFont  font;
  String texto; 
  int    x,y;
  int    radio;
//Constructor  
PantallaGanaste(){
  font    =loadFont("NirmalaUI-Bold-48.vlw");
  texto   = "Has Encontrado La Salida";
  x       = width/2;
  y       = height/2;
  radio   = 50;
  }
//Funcionalidades  
void draw(){
  background(random(255),random(0),random(0));
  textFont(font);
  fill(random(255));
  textAlign(CENTER);
  textSize(65);
  text(texto,scX(x),scY(y-100));
  textSize(25);
  } 

  }
