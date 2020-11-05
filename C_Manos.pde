class Manos {
//Atributos
  PImage mano;
  float  ancho,alto,radio;
  float  x, y;
  float  paso;
//Constructor  
Manos() {
  mano  = loadImage("hands.png");
  x     = scX(400);
  y     = scY(550);
  ancho = scX(180);
  alto  = scY(250);
  radio = 2;
  paso  = 10;
  }
//Funcionalidades  
void draw() {
  push();
  translate(scX(x), scY(y));
  imageMode(CENTER);
  image( mano, 0, 0, scX(ancho), scY(alto));
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
  }
