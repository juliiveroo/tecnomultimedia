//Clase Declarada
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
  x       = 800/2;
  y       = 600/2;
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
    float scX  (float valor){
    return map(valor, 0, 800, 0, width);
  }
   
  float scY  (float valor){
    return map(valor, 0, 600, 0, height);
  }

                   
            

  }
