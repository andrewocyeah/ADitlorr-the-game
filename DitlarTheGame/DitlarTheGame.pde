int mode= 0;//the mode code tells program whether it is in the title Screen, the main map, game over Screen, etc
int menu = 0;
int x;
int y;
int speed=5;
int t = 0;
int bx[][]={{100,300,100,300}};//x position of walls
int by[][]={{100,100,300,300}};//y position of walls
int bw[][]={{100,100,100,100}};//width of walls
int bh[][]={{100,100,100,100}};//height of walls
int wx[][]={{700,900,700,900}};//x position of water tile
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
String items[][]={
{"Apple","20","0","5"},
{"Shoe polish","15","1","5"},
{"A strange thing","30","0","-5"}
};
String da = "I Am Speaking";
int len=0;
int message=0;
boolean push;//for the-involutary-spam bug
int place = 0;
boolean keys[] = new boolean[5];
void setup(){
  fullScreen();//causes the game to be fullScreen
  textAlign(CENTER);
}
void draw(){
  if(mode==0){//overworld map
    if(menu==2){
      for(int g = 0;g < items.length;g++){
        rect(width/2-100,g*60,200,50);
        text(item[g][0],width/2,(g*60)+25);
        
      }
    }
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
      fill(255);int mode= 0;//the mode code tells program whether it is in the title Screen, the main map, game over Screen, etc
int menu = 0;
int x;
int y;
int speed=5;
int money=100;
int moneymax = 100;
int wheelScroll;
int t = 0;
int bx[][]={{100,300,100,300}};//x position of walls
int by[][]={{100,100,300,300}};//y position of walls
int bw[][]={{100,100,100,100}};//width of walls
int bh[][]={{100,100,100,100}};//height of walls
int wx[][]={{700,900,700,900}};//x position of water tile
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
int sx[][]={{-20}};
int sy[][]={{-20}};
int sw[][]={{20}};
int sh[][]={{20}};
//{worlds};
//{{shops}};
//{{{items}}};
int si[][][]={{{1,2,3}}};
String items[][]={
{"Nothing"},
{"Apple","20","0","5"},
{"Shoe polish","15","1","5"},
{"A strange thing","30","0","-5"}
};
String da = "I Am Speaking";
int len=0;
int message=0;
boolean push;//for the-involutary-spam bug
int place = 0;
boolean keys[] = new boolean[5];
boolean shopenter;
int shop;
boolean done;
void setup(){
  fullScreen();//causes the game to be fullScreen
  textAlign(CENTER);
}
void draw(){
  if(mode==0){//overworld map
    if(menu==2){
      fill(155,10);
      rect(0,0,width,height);
      for(int g = 0;g < si[place][shop].length;g++){
        fill(255);
        rect(width/2-100,g*60+wheelScroll,200,50);
        fill(0);
        text(items[si[place][shop][g]][0],width/2,(g*60)+25+wheelScroll);
        if(mouseX>width/2-100&&mouseX<width/2+100&&mouseY>g*60+wheelScroll&&mouseY<g*60+wheelScroll+50){
          fill(0,100);
          rect(width/2-100,g*60+wheelScroll,200,50);
          if(mousePressed){
            if(push){
            money=money-int(items[si[place][shop][g]][1]);
            if(money>0){
                for(int x = 0;x<inventory.length;x++){
                  for(int y = 0;y<inventory[0].length;y++){
                    if(items[inventory[x][y]][0]=="Nothing"){
                      inventory[x][y]=si[place][shop][g];
                      done=true;
                      break;
                    }
                  }
                  if(done==true){
                    break;
                  }
                }
                push=false;
              }
            }else{
              money=money+int(items[si[place][shop][g]][1]);
            }
          }else{
            push=true;
          }
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
    if(menu==1){
      fill(155,10);
      rect(0,0,width,height);
      for(int x = 0;x<inventory.length;x++){
        for(int y = 0;y<inventory.length;y++){
          fill(255);
          rect((width/2)-((inventory.length*90)/2)+(x*90),(height/2)-((inventory[0].length*90)/2)+(y*90),80,80);
          fill(0);
          textSize(10);
          textAlign(CENTER);
          text(items[inventory[x][y]][0],(width/2)-((inventory.length*90)/2)+(x*90)+40,(height/2)-((inventory[0].length*90)/2)+(y*90)+40);
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
      fill(0,255,0,100);
      rect(x-(width/2),y-(height/2),map(money,0,moneymax,0,100),20);
      textSize(20);
      fill(0);
      text(money,x-(width/2)+50,y-(height/2)+10);
      for(int d = 0;d<si[place].length;d++){
        if(x+20>sx[place][d]&&x<sx[place][d]+sw[place][d]&&y+20>sy[place][d]&&y<sy[place][d]+sh[place][d]){
          menu=2;
          shop=d;
        }
      }
      if(keys[0]){y=y-speed;for(int f = 0;f < bx[place].length;f++){if(x+20>bx[place][f]&&x<bx[place][f]+bw[place][f]&&y+20>by[place][f]&&y<by[place][f]+bh[place][f]){y=y+speed;}}for(int f = 0;f < wx[place].length;f++){if(x+20>wx[place][f]&&x<wx[place][f]+ww[place][f]&&y+20>wy[place][f]&&y<wy[place][f]+wh[place][f]){y=y+speed/2;}}}
      if(keys[1]){x=x-speed;for(int f = 0;f < bx[place].length;f++){if(x+20>bx[place][f]&&x<bx[place][f]+bw[place][f]&&y+20>by[place][f]&&y<by[place][f]+bh[place][f]){x=x+speed;}}for(int f = 0;f < wx[place].length;f++){if(x+20>wx[place][f]&&x<wx[place][f]+ww[place][f]&&y+20>wy[place][f]&&y<wy[place][f]+wh[place][f]){x=x+speed/2;}}}
      if(keys[2]){y=y+speed;for(int f = 0;f < bx[place].length;f++){if(x+20>bx[place][f]&&x<bx[place][f]+bw[place][f]&&y+20>by[place][f]&&y<by[place][f]+bh[place][f]){y=y-speed;}}for(int f = 0;f < wx[place].length;f++){if(x+20>wx[place][f]&&x<wx[place][f]+ww[place][f]&&y+20>wy[place][f]&&y<wy[place][f]+wh[place][f]){y=y-speed/2;}}}
      if(keys[3]){x=x+speed;for(int f = 0;f < bx[place].length;f++){if(x+20>bx[place][f]&&x<bx[place][f]+bw[place][f]&&y+20>by[place][f]&&y<by[place][f]+bh[place][f]){x=x-speed;}}for(int f = 0;f < wx[place].length;f++){if(x+20>wx[place][f]&&x<wx[place][f]+ww[place][f]&&y+20>wy[place][f]&&y<wy[place][f]+wh[place][f]){x=x-speed/2;}}}
      if(keys[4]){
        if(push){
          menu=1;
          push=false;
        }
      }else{
        push = true;
      }
      for(int f = 0;f < bx[place].length;f++){
        fill(255);
        rect(bx[place][f],by[place][f],bw[place][f],bh[place][f]);
      }
      displayDialog("DEMO",x,y);
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
void displayDialog(String d,int x,int y){
  fill(255);
  rect(x-100,y-120,200,100,50);
  fill(0); 
  text(d,x,y-60);
}
void mouseWheel(MouseEvent event) {
  wheelScroll += event.getCount()*20;
}

      rect(x,y,20,20);
      
      if(keys[0]){y=y-speed;for(int f = 0;f < bx[place].length;f++){if(x+20>bx[place][f]&&x<bx[place][f]+bw[place][f]&&y+20>by[place][f]&&y<by[place][f]+bh[place][f]){y=y+speed;}}for(int f = 0;f < wx[place].length;f++){if(x+20>wx[place][f]&&x<wx[place][f]+ww[place][f]&&y+20>wy[place][f]&&y<wy[place][f]+wh[place][f]){y=y+speed/2;}}}
      if(keys[1]){x=x-speed;for(int f = 0;f < bx[place].length;f++){if(x+20>bx[place][f]&&x<bx[place][f]+bw[place][f]&&y+20>by[place][f]&&y<by[place][f]+bh[place][f]){x=x+speed;}}for(int f = 0;f < wx[place].length;f++){if(x+20>wx[place][f]&&x<wx[place][f]+ww[place][f]&&y+20>wy[place][f]&&y<wy[place][f]+wh[place][f]){x=x+speed/2;}}}
      if(keys[2]){y=y+speed;for(int f = 0;f < bx[place].length;f++){if(x+20>bx[place][f]&&x<bx[place][f]+bw[place][f]&&y+20>by[place][f]&&y<by[place][f]+bh[place][f]){y=y-speed;}}for(int f = 0;f < wx[place].length;f++){if(x+20>wx[place][f]&&x<wx[place][f]+ww[place][f]&&y+20>wy[place][f]&&y<wy[place][f]+wh[place][f]){y=y-speed/2;}}}
      if(keys[3]){x=x+speed;for(int f = 0;f < bx[place].length;f++){if(x+20>bx[place][f]&&x<bx[place][f]+bw[place][f]&&y+20>by[place][f]&&y<by[place][f]+bh[place][f]){x=x-speed;}}for(int f = 0;f < wx[place].length;f++){if(x+20>wx[place][f]&&x<wx[place][f]+ww[place][f]&&y+20>wy[place][f]&&y<wy[place][f]+wh[place][f]){x=x-speed/2;}}}
      if(keys[4]){
        if(push){
          menu=1;
          push=false;
        }
      }else{
        push = true;
      }
      for(int f = 0;f < bx[place].length;f++){
        fill(255);
        rect(bx[place][f],by[place][f],bw[place][f],bh[place][f]);
      }
      displayDialog("DEMO",x,y);
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
void displayDialog(String d,int x,int y){
  fill(255);
  rect(x-100,y-120,200,100,50);
  fill(0); 
  text(d,x,y-60);
}
