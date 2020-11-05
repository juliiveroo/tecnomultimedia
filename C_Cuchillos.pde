class Cuchillos{
//Atributos  
  PImage cuchillo;
  float  x, y;
  float  dir, vel;
  float  ancho, alto;
  float  radio;
//Constructor  
Cuchillos(){
  cuchillo = loadImage("knife.png");
  x        = scX(random (0, width));
  y        = scY(0);
  dir      = random (20, 160);
  vel      = random (3, 9);
  ancho    = scX(100);
  alto     = scY(100);
  radio    = 50;
  }
//Funcionalidades  
void draw(){
  mover();
  dibujar();
  }
void dibujar(){
  push();
  translate(scX(x),scY(y));
  imageMode(CENTER);
  image(cuchillo,0,0,scX(250),scY(200));
  pop();
  }
void mover(){
  float despX, despY;
  despX = cos( radians(dir) ) * vel;
  despY = sin( radians(dir) ) * vel;
  x+=despX;
  y+=despY; 
  if(x>width+ancho){
  x = random (0, width);
  y = 0;
  }
  if(x<0-ancho){
  x = random (0, width);
  y = 0;
  }
  if(y>height+ancho){
  y = 0;
  x = random (0, width);
  }
  if(y<0-ancho){
  y = 0;
  x = random (0, width);
  }
  }
boolean colision(float x_,float y_,float radio_){
  if( DEBUG ){
  stroke(255);
  line(x, y, x_, y_);
  }
float distancia = dist(x, y, x_, y_);
  if ( distancia < radio+radio_ ){
  return true;
  }else{
  return false;
  }
  }
  }
  
  
