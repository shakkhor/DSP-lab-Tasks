
%-MD MAHADI HASAN NAHID
%-Lecturer, CSE, SUST
%-CSE 426 - Digitall Signal Processing 

%-FIR Filter Low Pass

clear all;
clc;

[s Fs nBit] = wavread('test');
sound(s,Fs);

cutoff_Hz = 1000; 

b = fir1(48,cutoff_Hz/(Fs/2),'low');

y = filter(b,1,s);
sound(y,Fs);