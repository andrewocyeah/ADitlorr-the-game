//The Ditlar game
int mode= 0;//the mode code tells program whether it is in the title Screen, the main map, game over Screen, etc
int x;
int y;
int speed=5;
int bx[]={100,300,100,300};//x position of walls
int by[]={100,100,300,300};//y position of walls
int bw[]={100,100,100,100};//width of walls
int bh[]={100,100,100,100};//height of walls
boolean keys[] = new boolean[5];
void setup(){
  fullScreen();//causes the game to be fullScreen
}
void draw(){
  if(mode==0){//overworld map
    background(0);
    translate(width/2-x,height/2-y);
    rect(x,y,20,20);
    if(keys[0]){y=y-speed;for(int f = 0;f < bx.length;f++){if(x+20>bx[f]&&x<bx[f]+bw[f]&&y+20>by[f]&&y<by[f]+bh[f]){y=y+speed;}}}
    if(keys[1]){x=x-speed;for(int f = 0;f < bx.length;f++){if(x+20>bx[f]&&x<bx[f]+bw[f]&&y+20>by[f]&&y<by[f]+bh[f]){x=x+speed;}}}
    if(keys[2]){y=y+speed;for(int f = 0;f < bx.length;f++){if(x+20>bx[f]&&x<bx[f]+bw[f]&&y+20>by[f]&&y<by[f]+bh[f]){y=y-speed;}}}
    if(keys[3]){x=x+speed;for(int f = 0;f < bx.length;f++){if(x+20>bx[f]&&x<bx[f]+bw[f]&&y+20>by[f]&&y<by[f]+bh[f]){x=x-speed;}}}
    for(int f = 0;f < bx.length;f++){
      rect(bx[f],by[f],bw[f],bh[f]);
    }
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


