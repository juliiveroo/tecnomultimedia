class Juego{
//Atributos
  PImage puerta;
   Llaves [] arrayLlaves;
  int cantLlaves=2;
  Cuchillos [] arrayCuchillos;
  int cantCuchillos=10;
  int pantalla=1;
  Manos manos;
  PantallaInicio pant1;
  PantallaPerdiste pant2;
  PantallaGanaste pant3;
//Constructor
Juego(){
  surface.setResizable(true);
  puerta = loadImage("door4.jpg");
  manos  = new Manos();
  pant1  = new PantallaInicio();
  pant2  = new PantallaPerdiste();
  pant3  = new PantallaGanaste();
  arrayLlaves = new Llaves[cantLlaves];
  for(int i=0; i<cantLlaves; i++){
  arrayLlaves[i] = new Llaves();
  }
  arrayCuchillos = new Cuchillos[cantCuchillos];
  for(int j=0; j<cantCuchillos; j++){
  arrayCuchillos[j] = new Cuchillos();
  }
  }
//Funcionalidades  
void draw(){
  if(pantalla==1){
  pant1.draw();  
  }else if(pantalla==2){
  image(puerta,0,0,scX(800),scY(600));
  manos.draw();
  for(int i=0; i<cantLlaves; i++){
  arrayLlaves[i].draw();
  if(arrayLlaves[i].colision( manos.getX(), 
  manos.getY(), manos.getRadio() ) ){
  pantalla=3;
  }
  }
  for(int j=0; j<cantCuchillos; j++){
  arrayCuchillos[j].draw();
  if(arrayCuchillos[j].colision( manos.getX(), 
  manos.getY(), manos.getRadio() ) ){
  pantalla=4;
  }
  }
  }else if(pantalla==3){
  pant3.draw();  
  }else if(pantalla==4){
  pant2.draw();  
  }
  }
  
void keyPressed(){
  if(pantalla==2){
  manos.keyPressed();  
  }
  }
void mousePressed(){
  if(pantalla==1){if( mouseX>scX(0) && mouseX<scX(800) && mouseY>scY(0) && mouseY<scY(600)){pantalla=2;}}
 
  else if( pantalla==3){if (mouseX>scX(0) && mouseX<scX(800) && mouseY>scY(0) && mouseY<scY(600)){pantalla=1;}}
  
  else if(pantalla==4){ if (mouseX>scX(0) && mouseX<scX(800) && mouseY>scY(0) && mouseY<scY(600)){pantalla=1;}}
  
  }
  }
float scX  (float valor){
  return map(valor, 0, 800, 0, width);
  }
   
float scY  (float valor){
  return map(valor, 0, 600, 0, height);
  }
