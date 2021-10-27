% grid size & vectors
a=200;
b=(.5:a)'/a;
c=max(b,flip(b));
d=ones(a);
f=b-.5;
r=f'.^2+f.^2;
% Asymmetric Perlin-ish noise
g=abs(ifftn(exp(7i*rand(a))./r.^.9));
s=@surf;
% Make our mountain:
s(b,b',g.*(1-max(c,c'))*a/2)
hold on
 for n = 1:50
     s(b,b',d*n,d+cat(3,1,1,1),(EdgeA==0),(FaceA==0));
 end
% Scale the image right in the window
plot3(0,0,a/2,'w.');
% Pretty:
shading flat
colormap([c,c,c])
axis on
camva(5)