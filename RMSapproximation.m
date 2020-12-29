clear;
close;
clc;

x=[0,2,4,6,8,10];
y=[2.8,4.4,9.2,17.2,28.4,42.8];
scatter(x,y)
%we are asked to find y values of odd x values.
%we need sums of values as a second order polynomial y = ax2+b  is going to be fit with least Root
%mean square error 
sum = 0;
sumy=0;
sumx2=0;
sumx4=0;
sumx2y=0;
for i=1:length(x)
    sum= sum+1;
    sumx2= sumx2 +(x(i))^2;
    sumx4=sumx4 + x(i)^4;
    sumy= sumy+y(i);
    sumx2y= sumx2y +x(i)^2*y(i);
end
%[c]*[unknown]= [F]

%soln
c= [sum,sumx2; sumx2,sumx4];
f= [sumy; sumx2y];
unknown=c^-1*f;

b=unknown(1);
a=unknown(2);
 t= [1:2:9];
 for i=1:5
    y_unkn=  0.4*t(i).^2 + b 

 end
     

 
