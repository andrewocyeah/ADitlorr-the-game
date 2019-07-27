int mode= 0;//the mode code tells program whether it is in the title Screen, the main map, game over Screen, etc
int menu = 0;
int x;
int y;
int speed=5;
int bx[][]={{100,300,100,300}};//x position of walls
int by[][]={{100,100,300,300}};//y position of walls
int bw[][]={{100,100,100,100}};//width of walls
int bh[][]={{100,100,100,100}};//height of walls
int wx[][]={{100,300,100,300}};//x position of water tile
int wy[][]={{100,100,300,300}};//y position of water tile
int ww[][]={{100,100,100,100}};//width of water tile
int wh[][]={{100,100,100,100}};//height of water tile
int inventory[][]=new int[5][5];
int dx[][]={{}};
int dy[][]={{}};
int dw[][]={{}};
int dh[][]={{}};
int di[][]={{}};
int dnx[][]={{}};
int dny[][]={{}};
boolean push;//for the-involutary-spam bug
int place = 0;
boolean keys[] = new boolean[5];
void setup(){
  fullScreen();//causes the game to be fullScreen
}
void draw(){
  if(mode==0){//overworld map
    if(menu==1){
      fill(155,10);
      rect(0,0,width,height);
      for(int x = 0;x<inventory.length;x++){
        for(int y = 0;y<inventory.length;y++){
          fill(255);
          rect((width/2)-((inventory.length*90)/2)+(x*90),(height/2)-((inventory[0].length*90)/2)+(y*90),80,80);
          fill(0);
          textSize(10);
          text("Thing",(width/2)-((inventory.length*90)/2)+(x*90)+40,(height/2)-((inventory[0].length*90)/2)+(y*90),80,80);
        }
      }
      if(keys[4]){
        if(push){
          menu=0;
          push=false;
        }
      }else{
        push = true;
      }
    }  
    if(menu==0){
      fill(0,50);  
      rect(0,0,width,height);
      translate(width/2-x,height/2-y);
      fill(255);
      rect(x,y,20,20);
      if(keys[0]){y=y-speed;for(int f = 0;f < bx[place].length;f++){if(x+20>bx[place][f]&&x<bx[place][f]+bw[place][f]&&y+20>by[place][f]&&y<by[place][f]+bh[place][f]){y=y+speed;}}for(int f = 0;f < wx[place].length;f++){if(x+20>wx[place][f]&&x<wx[place][f]+ww[place][f]&&y+20>wy[place][f]&&y<wy[place][f]+wh[place][f]){y=y+speed/2;}}}
      if(keys[1]){x=x-speed;for(int f = 0;f < bx[place].length;f++){if(x+20>bx[place][f]&&x<bx[place][f]+bw[place][f]&&y+20>by[place][f]&&y<by[place][f]+bh[place][f]){x=x+speed;}}for(int f = 0;f < wx[place].length;f++){if(x+20>wx[place][f]&&x<wx[place][f]+ww[place][f]&&y+20>wy[place][f]&&y<wy[place][f]+wh[place][f]){y=y+speed/2;}}}
      if(keys[2]){y=y+speed;for(int f = 0;f < bx[place].length;f++){if(x+20>bx[place][f]&&x<bx[place][f]+bw[place][f]&&y+20>by[place][f]&&y<by[place][f]+bh[place][f]){y=y-speed;}}for(int f = 0;f < wx[place].length;f++){if(x+20>wx[place][f]&&x<wx[place][f]+ww[place][f]&&y+20>wy[place][f]&&y<wy[place][f]+wh[place][f]){y=y+speed/2;}}}
      if(keys[3]){x=x+speed;for(int f = 0;f < bx[place].length;f++){if(x+20>bx[place][f]&&x<bx[place][f]+bw[place][f]&&y+20>by[place][f]&&y<by[place][f]+bh[place][f]){x=x-speed;}}for(int f = 0;f < wx[place].length;f++){if(x+20>wx[place][f]&&x<wx[place][f]+ww[place][f]&&y+20>wy[place][f]&&y<wy[place][f]+wh[place][f]){y=y+speed/2;}}}
      if(keys[4]){
        if(push){
          menu=1;
          push=false;
        }
      }else{
        push = true;
      }
      for(int f = 0;f < bx[place].length;f++){
        rect(bx[place][f],by[place][f],bw[place][f],bh[place][f]);
      }
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
  if(key=='i'){keys[4]=true;}
}
void keyReleased(){
  if(key=='w'){keys[0]=false;}
  if(key=='a'){keys[1]=false;}
  if(key=='s'){keys[2]=false;}
  if(key=='d'){keys[3]=false;}
  if(key=='i'){keys[4]=false;}
}
