int pantalla=1;
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

void setup(){

 size(800,600);
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
 
 
 
 
}




void draw(){
  if      (pantalla==1)  {image(comenzar,0,0,800,600);
                        textSize(20);
                        fill(255);
                        text("presiona 'g' para comenzar de nuevo", 10,580);
                        textFont(font);
                        textSize(100);
                        fill(random(255),0,0);
                        text("DEVIL'S DOORS", 30,250);}
  else if (pantalla==2)  {image(door1,0,0,800,600);} 
  
  else if (pantalla==3)  {image(door2,0,0,800,600);}

  else if (pantalla==4)  {image(door3,0,0,800,600);} 

  else if (pantalla==5)  {image(door4,0,0,800,600);}

  else if (pantalla==6)  {image(door5,0,0,800,600);}
 
  else if (pantalla==7)  {image(dead1,0,0,800,600);} 

  else if (pantalla==8)  {image(dead2,0,0,800,600);}

  else if (pantalla==9)  {image(devil,0,0,800,600);}
  
  else if (pantalla==10)  {background(random(255),0,0);
                           textSize(50);
                           textFont(font);
                           fill(0);
                           text("¡HAS ENCONTRADO",150,250);
                           text("LA SALIDA!",250,350);}

  
}
    
    
void mousePressed(){
                     if(pantalla==1){if (mouseX>580 && mouseX<800 && mouseY>450 && mouseY<600){pantalla=2;}}
                     
                     else if(pantalla==2){
                    
                     if (mouseX>10 && mouseX<130 && mouseY>100 && mouseY<590){pantalla=3;}
                     if (mouseX>620 && mouseX<790 && mouseY>100 && mouseY<590){pantalla=4;}}
                    
                     else if(pantalla==3){
                     if (mouseX>450 && mouseX<620 && mouseY>0 && mouseY<500){pantalla=5;}
                     if (mouseX>150 && mouseX<340 && mouseY>0 && mouseY<500){pantalla=7;}}
                     
                     else if(pantalla==5){if (mouseX>200 && mouseX<600 && mouseY>20 && mouseY<300 ){pantalla=10;}}
                     
                     else if(pantalla==7){if (mouseX>0 && mouseX<800 && mouseY>0 && mouseY<600){pantalla=1;}}
                     
                     else if(pantalla==10){if (mouseX>0 && mouseX<800 && mouseY>0 && mouseY<600){pantalla=1;}}
                       
                     
                     else if(pantalla==4){
                     if (mouseX>50  && mouseX<215 && mouseY>50 && mouseY<410){pantalla=8;}
                     if (mouseX>330 && mouseX<485 && mouseY>50 && mouseY<410){pantalla=9;}
                     if (mouseX>590 && mouseX<750 && mouseY>50 && mouseY<410){pantalla=6;}
                     }
                     
                     
                     else if(pantalla==6){if (mouseX>250 && mouseX<500 && mouseY>100 && mouseY<600){pantalla=9;}}
                     else if(pantalla==8){if (mouseX>0 && mouseX<800 && mouseY>0 && mouseY<600){pantalla=1;}}
                     else if(pantalla==9){if (mouseX>0 && mouseX<800 && mouseY>0 && mouseY<600){pantalla=1;}}
                     
                     
                       
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
                  
                       
                     
                   
