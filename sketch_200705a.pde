float r,d;
size(1200,720);
colorMode(HSB,100,150, 200);blendMode(ADD);noStroke();clear();
for(d=999;d>0;d-=3){
fill((d/3)%255,128,255,64);
beginShape(TRIANGLE_STRIP);
for(r=d;r<=TAU+d;r+=PI/32)
vertex(cos(r)*(d+noise(r,d)*d)+600,sin(r)*(d+noise(r,d)*d)+360);
endShape();
}
