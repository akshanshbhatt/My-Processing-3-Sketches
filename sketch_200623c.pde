float r,t;
void setup(){t = 2.6468; size(720,720);stroke(100, 200, 200);strokeWeight(1.09);}
void draw(){
clear();
//t += 0.00001;
String yo = "FRACTAL CANOPY ";
for(r=0;r<6;r+=PI/4)
f(360,360,r,120);
text("  © Akshansh Bhatt (Made Using Processing 3)",width-270, 650);
text(yo,width/2.4, 100);
}
void f(float x,float y,float r,float d){
if(d>3){
 line(x,y,x+=cos(r)*d,y-=sin(r)*d);
 f(x,y,r+y/99+t,d/1.5);
 f(x,y,r-y/99-t,d/1.5);
}
}
