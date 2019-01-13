%-MD MAHADI HASAN NAHID
%-Lecturer, CSE, SUST
%-CSE 426 - Digitall Signal Processing 


clear all;
clc;

T=50;
fs=1/T;
t = 1:0.25:200;

y = sin(2*pi*fs*t);

plot(t,y)
ylim([-1 1])