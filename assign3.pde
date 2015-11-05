//You should implement your assign3 here.

final int GAME_START=0;
final int GAME_RUN=1;
final int GAME_OVER=2;
int state;
int bloodSpeed=20;
PImage startImg2;
PImage startImg1;
PImage endImg1;
PImage endImg2;
PImage bg1Img;
PImage bg2Img;
PImage enemyImg;
PImage fighterImg;
PImage hpImg;
PImage treasureImg;
int bg1x=640;
int bg2x=0;
int x=0;
int y=0;
int hpX=0;
int hpY=0;
int treasureX=0;
int enemyX=0;
int enemyY=floor(random (475));
int treasureY=floor(random (475));
int bloodX=40;
int spaceX=50;
int spaceY=20;

int fighterImgX;
int fighterImgY;
int speed=5;
int i;

void setup () {
  size(640, 480) ;
 state=GAME_START;
 startImg1=loadImage("img/start1.png");
 startImg2=loadImage("img/start2.png");
  endImg1=loadImage("img/end1.png");
   endImg2=loadImage("img/end2.png");
   bg1Img=loadImage("img/bg1.png");
  bg2Img=loadImage("img/bg2.png");
  enemyImg=loadImage("img/enemy.png");
  hpImg=loadImage("img/hp.png");
  treasureImg=loadImage("img/treasure.png");
  fighterImg=loadImage("img/fighter.png");
  fighterImgX=width/2;
  fighterImgY=height/2;
}

void draw() {

    switch(state){
       case GAME_START:{
           image(startImg2,0,0);
           if (mouseX<450 && 210<mouseX ){
               if(mouseY<410 && 380<mouseY){
                  image(startImg1,0,0);
                 if(mousePressed){
                  fighterImgX=width/2;
                  fighterImgY=height/2;
                   bloodX = 40;
                   state=GAME_RUN;
                  }
               }
           }
           break;
           }
       case GAME_RUN:{
         
         
        
         bg1x %= 1280;
          x=-640+bg1x;
          image(bg1Img,x,0);
          bg2x %=1280;
          y=-640+bg2x;   
          image(bg2Img,y,0); 
          bg1x=bg1x+5;
          bg2x=bg2x+5;
          enemyX %= 890;
         
            for(i=0;i<5;i=i+1){
            image(enemyImg,enemyX-i*spaceX,enemyY);
            
          }
          
          enemyX = enemyX +5;
          if(enemyX==890){
          enemyY=floor(random(420));
          }
          image(hpImg,hpX,hpY);
          image(treasureImg,treasureX,treasureY);
          image(fighterImg,fighterImgX,fighterImgY);
          fill(255,0,0);
          rect(5,5,bloodX,20);
                    
           break;
         
           }
       case GAME_OVER:{
           image(endImg2,0,0);
               if (mouseX<460 && 200<mouseX ){
                    if(mouseY<350 && 300<mouseY){
                      image(endImg1,0,0);
                      if(mousePressed){
                          state=GAME_START;
                                                }
                    }
                    
            }
          break;
       }     
                 
    }
           
    }
       
   


