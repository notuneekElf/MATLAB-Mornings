hold on
n=[1,2E3];
scatter3(ones(n)*220,rand(n)*220-1,rand(n)*15,randg(1,n),'w','f')
L = 10*membrane(1,99);
surface(L,'EdgeColor','none');
colormap jet
view(-90,0)
axis ([0 220 0 200 1 15]) 
set(gca,'Color','k','Ztick',[],'Ytick',[])