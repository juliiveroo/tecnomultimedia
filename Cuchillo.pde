//Clase Declarada
class Cuchillo{
//Atributos  
  PImage cuchillo;
  float  x, y;
  float  dir, vel;
  float  ancho, alto;
  float  radio;
//Constructor  
Cuchillo(){
  cuchillo = loadImage("knife.png");
  x        = random (0, 800);
  y        = 0;
  dir      = random (20, 160);
  vel      = random (3, 9);
  ancho    = scX(30);
  alto     = scY(130);
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
  image(cuchillo,0,0,scX(30),scY(130));
  pop();
  }
void mover(){
  float despX, despY;
  despX = cos( radians(dir) ) * vel;
  despY = sin( radians(dir) ) * vel;
  x+=despX;
  y+=despY; 
  if(x>800+ancho){
  x = random (0, 800);
  y = 0;
  }
  if(x<0-ancho){
  x = random (0, 800);
  y = 0;
  }
  if(y>600+ancho){
  y = 0;
  x = random (0, 800);
  }
  if(y<0-ancho){
  y = 0;
  x = random (0, 800);
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
    float scX  (float valor){
    return map(valor, 0, 800, 0, width);
  }
   
  float scY  (float valor){
    return map(valor, 0, 600, 0, height);
  }

                   
            
  }
  
  
