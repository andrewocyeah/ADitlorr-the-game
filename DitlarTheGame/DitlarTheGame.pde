//The Ditlar game
int mode= 0;//the mode code tells program whether it is in the title Screen, the main map, game over Screen, etc
int x;
int y;
int bx[]={};//x position of walls
int by[]={};//
int bw[]={};//
int bh[]={};//
boolean keys[] = new boolean[5];
void setup(){
  fullScreen();//causes the game to be fullScreen
}
void draw(){
  if(mode==0){//overworld map
    background(0);
    translate(width/2-x,height/2-y);
    rect(x,y,20,20);
    if(keys[0]){y--;}
    if(keys[1]){x--;}
    if(keys[2]){y++;}
    if(keys[3]){x++;}
  }
  if(mode==1){//title screen
  }
  if(mode==2){//game over screen
  }
}
void keyPressed(){
  if(key=='w'){keys[0]=true;}
  if(key=='a'){keys[1]=true;}
  if(key=='s'){keys[2]=true;}
  if(key=='d'){keys[3]=true;}
}
void keyReleased(){
  if(key=='w'){keys[0]=false;}
  if(key=='a'){keys[1]=false;}
  if(key=='s'){keys[2]=false;}
  if(key=='d'){keys[3]=false;}
}
