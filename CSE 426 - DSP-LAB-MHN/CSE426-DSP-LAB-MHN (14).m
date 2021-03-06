%-MD MAHADI HASAN NAHID
%-Lecturer, CSE, SUST
%-CSE 426 - Digitall Signal Processing 

%-IIR Filter High Pass

clear all;
clc;

[s Fs nBit] = wavread('test');
sound(s,Fs);

N = 1; 
cutoff_Hz = 2000; 
[b,a]=butter(N,cutoff_Hz/(Fs/2),'high'); 

y_filt = filter(b,a,s);

sound(y_filt,Fs);
