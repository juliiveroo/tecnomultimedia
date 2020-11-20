//Clase Declarada
class Manos {
//Atributos
  PImage mano;
  float  ancho,alto,radio;
  float  x, y;
  float  paso;
//Constructor  
Manos() {
  mano  = loadImage("hands.png");
  x     = 800/2;
  y     = 550;
  radio = 10;
  paso  = 10;
  }
//Funcionalidades  
void draw() {
  push();
  translate(scX(x), scY(y));
  imageMode(CENTER);
  image( mano, 0, 0, scX(100), scY(180));
  pop();
  }
void keyPressed() {
  mover();
  }
void mover(){
  if(keyCode==LEFT){
  x = (x - paso);
  }
  if(keyCode==RIGHT){
  x = (x + paso);
  }
  if(keyCode==UP){
  y = (y - paso);  
  }
  if(keyCode==DOWN){
  y = (y + paso);
  }
  }
float getX(){
  return x; 
  }
  float getY(){
  return y; 
  }
  float getRadio(){
  return radio; 
  }
    float scX  (float valor){
    return map(valor, 0, 800, 0, width);
  }
   
  float scY  (float valor){
    return map(valor, 0, 600, 0, height);
  }

                   
            
  }
