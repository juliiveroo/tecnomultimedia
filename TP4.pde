int pantalla=1;
import processing.sound.*;
SoundFile horror;
PImage comenzar;
PImage door1;
PImage door2;
PImage door3;
PImage door4;
PImage door5; 
PImage dead1;
PImage dead2;
PImage devil;
PFont  font;
float []tam;
float [] x;
float [] y;

void setup(){

 size(800,600);
 surface.setResizable(true);
 horror= new SoundFile(this,"horror.mp3");
 horror.loop();
 comenzar=loadImage("comenzar.jpg");
 font=loadFont("NirmalaUI-Bold-48.vlw");
 door1=loadImage("door1.jpg");
 door2=loadImage("door2.jpg");
 door3=loadImage("door3.jpg");
 door4=loadImage("door4.jpg");
 door5=loadImage("door5.jpg");
 dead1=loadImage("dead1.jpg");
 dead2=loadImage("dead2.jpg");
 devil=loadImage("devil.jpg");
 tam= new float[100];
 x= new float[100];
 y= new float[100];
 for(int i=0;i<100;i++){
 tam[i]= random(10,50);
 y[i]=  map(tam[i],30, 10, 1, 3);}
 
 
 
 
 
}




void draw(){
  if      (pantalla==1)  {image(comenzar,0,0,scX(800),scY(600));
                          textSize(20);
                          fill(255);
                          text("presiona 'g' para comenzar de nuevo", scX(10),scY(580));
                          textFont(font);
                          textSize(100);
                          fill(random(255),0,0);
                          text("DEVIL'S DOORS", scX(30),scY(250));}
  else if (pantalla==2)  {image(door1,0,0,scX(800),scY(600));} 
  
  else if (pantalla==3)  {image(door2,0,0,scX(800),scY(600));}

  else if (pantalla==4)  {image(door3,0,0,scX(800),scY(600));} 

  else if (pantalla==5)  {image(door4,0,0,scX(800),scY(600));}

  else if (pantalla==6)  {image(door5,0,0,scX(800),scY(600));}
 
  else if (pantalla==7)  {image(dead1,0,0,scX(800),scY(600));}

  else if (pantalla==8)  {image(dead2,0,0,scX(800),scY(600));}
                          
  else if (pantalla==9)  {image(devil,0,0,scX(800),scY(600));}

  else if (pantalla==10)  {background(random(255),0,0);
                           for(int i=0;i<100;i++){
                           float colores= map(tam[i], 10,30,50,250);
                           fill(colores,0,0);
                           ellipse(x[i], i*(800/100),tam[i],tam[i]);
                           x[i] += y[i];
                           if( x[i]>width){
                           x[i] = -tam[i];
                           textSize(50);
                           textFont(font);
                           fill(0);
                           text("¡HAS ENCONTRADO",scX(150),scY(250));
                           text("LA SALIDA!",scX(250),scY(350));}
                           
                         
}
}
}

    
    
void mousePressed(){
                     if(pantalla==1){if (mouseX>scX(580) && mouseX<scX(800) && mouseY>scY(450) && mouseY<scY(600)){pantalla=2;}}
                     
                     else if(pantalla==2){
                    
                     if (mouseX>scX(10) && mouseX<scX(130) && mouseY>scY(100) && mouseY<scY(590)){pantalla=3;}
                     if (mouseX>scX(620) && mouseX<scX(790) && mouseY>scY(100) && mouseY<scY(590)){pantalla=4;}}
                    
                     else if(pantalla==3){
                     if (mouseX>scX(450) && mouseX<scX(620) && mouseY>scY(0) && mouseY<scY(500)){pantalla=5;}
                     if (mouseX>scX(150) && mouseX<scX(340) && mouseY>scY(0) && mouseY<scY(500)){pantalla=7;}}
                     
                     else if(pantalla==5){if (mouseX>scX(200) && mouseX<scX(600) && mouseY>scY(20) && mouseY<scY(300) ){pantalla=10;}}
                     
                     else if(pantalla==7){if (mouseX>scX(0) && mouseX<scX(800) && mouseY>scY(0) && mouseY<scY(600)){pantalla=1;}}
                     
                     else if(pantalla==10){if (mouseX>scX(0) && mouseX<scX(800) && mouseY>scY(0) && mouseY<scY(600)){pantalla=1;}}
                       
                     
                     else if(pantalla==4){
                     if (mouseX>scX(50)  && mouseX<scX(215) && mouseY>scY(50) && mouseY<scY(410)){pantalla=8;}
                     if (mouseX>scX(330) && mouseX<scX(485) && mouseY>scY(50) && mouseY<scY(410)){pantalla=9;}
                     if (mouseX>scX(590) && mouseX<scX(750) && mouseY>scY(50) && mouseY<scY(410)){pantalla=6;}
                     }
                     
                     
                     else if(pantalla==6){if (mouseX>scX(250) && mouseX<scX(500) && mouseY>scY(100) && mouseY<scY(600)){pantalla=9;}}
                     else if(pantalla==8){if (mouseX>scX(0) && mouseX<scX(800) && mouseY>scY(0) && mouseY<scY(600)){pantalla=1;}}
                     else if(pantalla==9){if (mouseX>scX(0) && mouseX<scX(800) && mouseY>scY(0) && mouseY<scY(600)){pantalla=1;}}
                     
                     
                     
                     
                       
}

void keyPressed(){
    if(pantalla==2){
    if( key == 'g' || key=='G'){
      pantalla=1;}}
      
  if(pantalla==3){
    if( key == 'g' || key=='G'){
      pantalla=1;}}
      
  if(pantalla==4){
    if( key == 'g' || key=='G'){
      pantalla=1;}}
       
  if(pantalla==5){
    if( key == 'g' || key=='G'){
      pantalla=1;}}
     
  if(pantalla==6){
    if( key == 'g' || key=='G'){
      pantalla=1;}}
           
  if(pantalla==7){
    if( key == 'g' || key=='G'){
      pantalla=1;}}
 
   if(pantalla==8){
    if( key == 'g' || key=='G'){
      pantalla=1;}}
      
  if(pantalla==9){
    if( key == 'g' || key=='G'){
      pantalla=1;}}
      
  if(pantalla==10){
    if( key == 'g' || key=='G'){
      pantalla=1;}}
       
 }
        
  float scX  (float valor){
    return map(valor, 0, 800, 0, width);
  }
   
  float scY  (float valor){
    return map(valor, 0, 600, 0, height);
  }
  
  
                       
                     
                   
