W=540;N=256;K=2./~-N
def setup():size(W,W,P3D);noiseSeed(76);noStroke()
def draw():clear();[(26&(i%N)^(i/N+frameCount*2)^i&13)%5 or F(i%N*K-1,i/N*K-1)for i in range(N*N)]
def F(x,y):d=mag(x,y,noise(x,y));circle(x/d*200+W/2,y/d*200+W/2,1/d)
