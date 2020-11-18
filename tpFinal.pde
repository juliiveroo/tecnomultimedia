/*Trabajo práctico Final
  Nombre:               Juliana Verónica Veloso
  Legajo:               81743/0
  Titulo:               Devil's Doors
  Objetivo:             Te encuentras encerrado en una casa, debes encontrar la puerta indicada y tomar la llave que te llevará 
                        hacia la libertad, de lo contrario, los seres que habitan el inmueble te hundiran en el infierno. 

*/
Juego juego;
boolean DEBUG=false;

void setup(){
  size(800,600);
  juego = new Juego(this);
 
}

void draw(){
  background(200);
  juego.draw();
}

void keyPressed(){
  juego.keyPressed();
}

void mousePressed(){
  juego.mousePressed();
  
}
