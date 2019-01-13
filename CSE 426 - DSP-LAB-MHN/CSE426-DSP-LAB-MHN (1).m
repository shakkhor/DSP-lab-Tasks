%-MD MAHADI HASAN NAHID
%-Lecturer, CSE, SUST
%-CSE 426 - Digitall Signal Processing 

clear all;
clc;

%%unit impluse

a = 2;
n = [-7:1:7];

y=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ];
y(8)=1;

n
y
figure 
subplot(221);
stem(n,y)


%%unit step

a = 2;
n = [-7:1:7];

for i=1:size(n,2)
    if(n(i) > 1) 
        x(i)=a.^n(i);
    else
        x(i)=0;
    end
end


subplot(222);
stem(n,x);
title('function x(n)');
xlabel('n value');
ylabel('x value'); 


%%exponential

n1 = 1;
n2 = 10;

t = n1 : n2;
a = 2
y = exp(a*t);

subplot(223);
plot(t,y,'r');
title('Continuous');
stem(t,y,'b');
title('Discrete');

