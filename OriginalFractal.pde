float rotatelol = 1;
int len = 3;
int ex = 250;
int ey = 250;
boolean change = false;
int somx = 250;
int somy = 250;
boolean click = true;
public void setup(){
 size(500,500);
 background(0,255,255);
}

public void draw(){
  fill(0,255,255);
  rect(0,0,500,500);
  fill(255,255,255);
  translate(250,250);
  rotate(rotatelol);
  translate(-250,-250);
  rotateSquare(ex,ey,len,0,0,0);
  len++;
  if(len>20){
    len=3;
  }
  if(ex>300){
    change=true;
  } else if(ex < 200){
   change= false; 
  }
  if(change==true){
  ex--;
  ey--; 
  } else {
  ex++;
  ey++; 
  }
  if(click==true){
  rotatelol+=0.05;
  } else {
   rotatelol+=0.15; 
  }
}

public void rotateSquare(int x, int y, int len, int lol, int two, int three){
 if(len>=1000){
  beginShape();
  vertex(x-len/2,y-len);
  vertex(x+len/2,y-len);
  vertex(x+len,y);
  vertex(x+len/2,y+len);
  vertex(x-len/2,y+len);
  vertex(x-len,y);
  endShape(CLOSE);
 } else {
 rotateSquare(x,y,len+10,lol+5,two+10,three+15);
 fill(lol,two,three);
 beginShape();
  vertex(x-len/2,y-len);
  vertex(x+len/2,y-len);
  vertex(x+len+(len/10),y);
  vertex(x+len/2,y+len);
  vertex(x-len/2,y+len);
  vertex(x-len-(len/10),y);
  endShape(CLOSE);
 translate(250,250);
 rotate(0.05);
 translate(-250,-250);
 }
}

public void mousePressed(){
 if(click==true){
  click=false; 
 } else {
  click= true; 
 }
}
