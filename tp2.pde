PFont  font;
float  posY;
PImage kill;
int    posX;
PImage bill;
PFont  font2;

void setup() {
  size(800, 600);
  background(0);
  font = createFont("Cambria", 48);
  posY = height;
  colorMode(RGB);
  kill= loadImage("kill bill.png");
  posX = -200; 
  bill= loadImage("killbill.png");
  font2= createFont("Dialog.bold",48);
}

void draw() {           
                        background(0);
                        image(kill,posX,0,800,600);
                        posX+=10;
                        
                        fill(255,map( posY , height ,0 ,0, 255 ) );
                        textFont(font);
                        textSize(30);
                        text("Written and Directed", 260,255);
                        text("by", 375,300);
                        textSize(48);
                        text("Quentin Tarantino", 210,355);
                        posY--;
                        
  
                        fill(0);
                        rect(150,posY, 500,1800); 
                        
                        
                        
                        //Cast
                        
                        
                        fill(255);
                        textSize(40);
                        text("CAST",350,posY+400);
                        
                        textSize(30);
                        textMode(LEFT);
                        text("The Bride",255,posY+450);
                        text("O-Ren Ishii", 238,posY+500);
                        text("Vernita Green", 205,posY+550);
                        text("Elle Driver",240,posY+600);
                        text("Bill",335,posY+650);
                        text("Budd", 310,posY+700);
                        text("Sofie Fatale",230,posY+750);
                        text("Gogo Yubari",223,posY+800);
                        text("Hattori Hanzo",200,posY+850);
                        text("Johnny Mo",245,posY+900);
                        text("Earl McGraw",220,posY+950);
                        text("Buck",315,posY+1000);
                        text("Boss Tanaka",223, posY+1050);
                        text("Bald Guy (Sushi Shop)",100,posY+1100);
                        text("Charlie Brown",200,posY+1150);
                        
                        text("UMA THURMAN",400,posY+450);
                        text("LUCY LIU",400,posY+500);
                        text("VIVICA A. FOX",400,posY+550);
                        text("DARYL HANNAH",400,posY+600);
                        text("DAVID CARRADINE",400,posY+650);
                        text("MICHAEL MADSEN",400,posY+700);
                        text("JULIE DREYFUS",400,posY+750);
                        text("CHIAKI KURIYAMA",400,posY+800);
                        text("SONNY CHIBA",400,posY+850);
                        text("GORDON LIU",400,posY+900);
                        text("MICHAEL PARKS",400,posY+950);
                        text("MICHAEL BOWEN",400,posY+1000);
                        text("JUN KUNIMURA",400,posY+1050);
                        text("KENJI OBA",400,posY+1100);
                        text("SAKICHI SATO",400,posY+1150);
                        
                        image(bill,100,posY+1350,600,200);
                        textSize(50);
                        textFont(font2);
                        text("Volume 1.",100,posY+1600);
                        

}

void mousePressed(){
   posY = height;
}
