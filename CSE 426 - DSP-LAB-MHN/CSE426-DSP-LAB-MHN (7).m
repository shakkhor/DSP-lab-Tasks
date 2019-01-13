%Linear Convolution
%-MD MAHADI HASAN NAHID
%-Lecturer, CSE, SUST
%-CSE 426 - Digitall Signal Processing 

clear all;
clc;
x=[1 2 4 ];
h=[1 1 1 1 1 ];

m=3;
n=5;

l=m+n-1;
X=zeros(1,l);
H=zeros(1,l);
X(1:m)=x;
H(1:n)=h;
for i=1:l
    Y(i)=0;
    for j=1:i
        Y(i)=Y(i)+X(j)*H(i-j+1);
    end
end
Y
y=conv(x,h);
y
