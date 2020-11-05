/*Trabajo practico n°5: Videojuego con objetos
  Nombre:               Juliana Veronica Veloso
  Legajo:               81743/0
  Juego:                Devil's doors
  Objetivo:             Debes tomar una llave para poder escapar, si agarras un cuchillo mueres 
*/
boolean DEBUG = false;
import processing.sound.*;
SoundFile horror;
Juego juego;
void setup(){
  size(800,600);
  juego = new Juego();
  horror= new SoundFile(this,"horror.mp3");
  horror.loop();
  
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
  println(mouseX+","+mouseY);
}
