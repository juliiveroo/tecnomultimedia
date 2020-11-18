//Clase Declarada
class Juego{
//Atributos: 
  int pantalla=1;
  PImage[]        door;
  PImage          dead1;
  PImage          dead2;
  PImage          devil;
  PImage          mano;
  PFont           font;
  PantallaInicio  pant1;
  PantallaGanaste pant3;
  Llave [] arrayLlaves;
  int cantLlaves=2;
  Cuchillo [] arrayCuchillos;
  int cantCuchillos=10;
  Manos manos;
  import processing.sound.*;
  SoundFile horror;
  
//Constructor
Juego(PApplet musica){
  surface.setResizable(true);
  manos    = new Manos();
  pant1    = new PantallaInicio();
  pant3    = new PantallaGanaste();
  font     = loadFont("NirmalaUI-Bold-48.vlw");
  door     = new PImage[5];
  door[0]  = loadImage("door1.jpg");
  door[1]  = loadImage("door2.jpg");
  door[2]  = loadImage("door3.jpg");
  door[3]  = loadImage("door4.jpg");
  door[4]  = loadImage("door5.jpg");
  dead1    = loadImage("dead1.jpg");
  dead2    = loadImage("dead2.jpg");
  devil    = loadImage("devil.jpg");
  mano     = loadImage("hand.png");
  arrayLlaves = new Llave[cantLlaves];
  for(int i=0; i<cantLlaves; i++){
  arrayLlaves[i] = new Llave();
  }
  arrayCuchillos = new Cuchillo[cantCuchillos];
  for(int j=0; j<cantCuchillos; j++){
  arrayCuchillos[j] = new Cuchillo();
  }
  horror   = new SoundFile(musica,"horror.mp3");
  horror.loop();
}
//Funcionalidades
void draw(){
  if      (pantalla==1)  {pant1.draw();    
                          reset();}
   
  else if (pantalla==2)  {image(door[0],0,0,scX(800),scY(600));
                          image(mano,mouseX,mouseY,scX(50),scY(90));} 
  
  else if (pantalla==3)  {image(door[1],0,0,scX(800),scY(600));
                          image(mano,mouseX,mouseY,scX(50),scY(90));}

  else if (pantalla==4)  {image(door[2],0,0,scX(800),scY(600));
                          image(mano,mouseX,mouseY,scX(50),scY(90));} 

  else if (pantalla==5)  {
                          image(door[3],0,0,scX(800),scY(600));
                           manos.draw();
                           for(int i=0; i<cantLlaves; i++){
                           arrayLlaves[i].draw();
                           if(arrayLlaves[i].colision( manos.getX(), 
                           manos.getY(), manos.getRadio() ) ){
                           pantalla=10;
                                                                   }
                                                                   }
                           for(int j=0; j<cantCuchillos; j++){
                           arrayCuchillos[j].draw();
                           if(arrayCuchillos[j].colision( manos.getX(), 
                           manos.getY(), manos.getRadio() ) ){
                           pantalla=9;
                                                                   }
                                                                   }}

  else if (pantalla==6)  {image(door[4],0,0,scX(800),scY(600));
                          image(mano,mouseX,mouseY,scX(50),scY(90));}
 
  else if (pantalla==7)  {image(dead1,0,0,scX(800),scY(600));       }

  else if (pantalla==8)  {image(dead2,0,0,scX(800),scY(600));       }
                          
  else if (pantalla==9)  {image(devil,0,0,scX(800),scY(600));       }

  else if (pantalla==10) {pant3.draw();                             }
                           
                         
}



void mousePressed(){
                     if(pantalla==1){if (mouseX>scX(580) && mouseX<scX(800) && mouseY>scY(450) && mouseY<scY(600)){pantalla=2;}}
                     
                     else if(pantalla==2){
                    
                     if (mouseX>scX(10) && mouseX<scX(130) && mouseY>scY(100) && mouseY<scY(590)){pantalla=3;}
                     if (mouseX>scX(620) && mouseX<scX(790) && mouseY>scY(100) && mouseY<scY(590)){pantalla=4;}}
                    
                     else if(pantalla==3){
                     if (mouseX>scX(450) && mouseX<scX(620) && mouseY>scY(0) && mouseY<scY(500)){pantalla=5;}
                     if (mouseX>scX(150) && mouseX<scX(340) && mouseY>scY(0) && mouseY<scY(500)){pantalla=7;}}
                     
                     else if(pantalla==7){if (mouseX>scX(0) && mouseX<scX(800) && mouseY>scY(0) && mouseY<scY(600)){pantalla=1;}}
                     
                     else if(pantalla==10){if (mouseX>scX(0) && mouseX<scX(800) && mouseY>scY(0) && mouseY<scY(600)){pantalla=1;}}
                       
                     
                     else if(pantalla==4){
                     if (mouseX>scX(50 )  && mouseX<scX(215) && mouseY>scY(50) && mouseY<scY(410)){pantalla=8;}
                     if (mouseX>scX(330) && mouseX<scX(485) && mouseY>scY(50) && mouseY<scY(410)){pantalla=9;}
                     if (mouseX>scX(590) && mouseX<scX(750) && mouseY>scY(50) && mouseY<scY(410)){pantalla=6;}}
                     
                     
                     else if(pantalla==6){if (mouseX>scX(250) && mouseX<scX(500) && mouseY>scY(100) && mouseY<scY(600)){pantalla=9;}}
                     else if(pantalla==8){if (mouseX>scX(0) && mouseX<scX(800) && mouseY>scY(0) && mouseY<scY(600)){pantalla=1;}}
                     else if(pantalla==9){if (mouseX>scX(0) && mouseX<scX(800) && mouseY>scY(0) && mouseY<scY(600)){pantalla=1;}}
                     
                     
                     
                     
                       
}

void keyPressed(){
    if(pantalla==5){
    manos.keyPressed();
  }
}
void reset(){
  manos = new Manos();
  arrayLlaves = new Llave[cantLlaves];
  for(int i=0; i<cantLlaves; i++){
  arrayLlaves[i] = new Llave();
  }
  arrayCuchillos = new Cuchillo[cantCuchillos];
  for(int j=0; j<cantCuchillos; j++){
  arrayCuchillos[j] = new Cuchillo();
  }
}
    
  float scX  (float valor){
    return map(valor, 0, 800, 0, width);
  }
   
  float scY  (float valor){
    return map(valor, 0, 600, 0, height);
  }

}                 
                   
