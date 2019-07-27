//The Ditlar game
int mode;//the mode code tells program whether it is in the title Screen, the main map, game over Screen, etc
void setup(){
  fullScreen();//causes the game to be fullScreen
}
void draw(){
  if(mode==0){//overworld map
  }
  if(mode==1){//title screen
    background(255);
    strokeWeight(5);
    fill(255);
    ellipse(width/2,height/2,200,200);
    triangle(width/2,height/2+90,width/2-80,height/2,width/2+80,height/2);
    line(width/2-50,height/2-70,width/2-50,height/2-10);
    line(width/2+50,height/2-70,width/2+50,height/2-10);
    line(width/2,height/2+100,width/2,height/2+300);
    line(width/2,height/2+100,width/2-100,height/2+200);
    line(width/2,height/2+100,width/2+100,height/2+200);
    line(width/2,height/2+300,width/2-100,height/2+400);
    line(width/2,height/2+300,width/2+100,height/2+400);
    textSize(180);
    fill(0);
    text("Ditlar the game.",width/2,200);
  }
  if(mode==2){//game over screen
  }
}
