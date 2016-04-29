PImage maze;

int x=162;
int y=162;

void setup(){
  maze=loadImage("maze.png");
  size(324,324);
}

void draw(){
  background(150);
  image(maze,0,0);
  if((x>165)&&(x<180)&&(y<10)){
    textSize(48);
    textAlign(CENTER);
    fill(255,0,0);
    text("YOU WIN!",width/2,height/2);
  }
  fill(255,0,0);
  noStroke();
  float touch=red(get(x,y));
  ellipse(x,y,10,10);
  if(touch<255){
    x=162;
    y=162;
  }
}

void keyPressed(){
  if((key==CODED)&&(keyCode==UP)){
    y--;
  }
  if((key==CODED)&&(keyCode==DOWN)){
    y++;
  }  
  if((key==CODED)&&(keyCode==RIGHT)){
    x++;
  }  
  if((key==CODED)&&(keyCode==LEFT)){
    x--;
  }
}