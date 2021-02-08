float t,r;
void setup(){size(720,720);noStroke();}
void draw(){
 clear();
 size(720, 720);
 noStroke();
 t=4.75*PI;
 for(r=0;r<6;r+=PI/2.5)
 f(360,360,r,99);
}
void f(float x,float y,float r,float d){
  fill(255,255,255);
  strokeWeight(1);
  //textAlign(CENTER, CENTER);
  text("FIVE-FOLD SYMMETRIC RECURSIVE PATTERN", 225 , 50);
  fill(0,150,150);
if(d>5){
circle(x+=cos(r)*d,y+=sin(r)*d,d/9);
f(x,y,r+d*d+t,d*.8);
f(x,y,r-d*d-t,d*.8);
}
}
