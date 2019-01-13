%-MD MAHADI HASAN NAHID
%-Lecturer, CSE, SUST
%-CSE 426 - Digitall Signal Processing 

clear all;
clc;

T1 = 50;
T2 = 100;
T3 = 120;

fs1=1/T1;
fs2=1/T2;
fs3=1/T3;

t = 1:0.25:200;

y1 = sin(2*pi*fs1*t);
y2 = sin(2*pi*fs2*t);
y3 = sin(2*pi*fs3*t);

y = y1 + y2 + y3;
plot(t,y)