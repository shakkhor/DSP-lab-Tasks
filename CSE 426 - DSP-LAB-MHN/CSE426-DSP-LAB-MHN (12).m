%-MD MAHADI HASAN NAHID
%-Lecturer, CSE, SUST
%-CSE 426 - Digitall Signal Processing 

%-FIR Filter High Pass

clear all;
clc;

[s Fs nBit] = wavread('test');
sound(s,Fs);

cutoff_Hz = 2000;  

b = fir1(48,cutoff_Hz/(Fs/2),'high');

y = filter(b,1,s);
sound(y,Fs);