z=0: .03 :0.97;
r=cos(3*pi*z)+2*sin(3*pi*z);
cylinder(r);
C=[0.625,0.390,0.248;1,0.781,0.497;flipud(hot(5))];
A=[C;flipud(C);];
colormap(A)
view(-44,41)
axis on