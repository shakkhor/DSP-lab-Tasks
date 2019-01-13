%-MD MAHADI HASAN NAHID
%-Lecturer, CSE, SUST
%-CSE 426 - Digitall Signal Processing 

close all;
clear all;
clc;


T=50;
fs=1/T;
t = 1:0.25:200;

%xn=[1 2 3 4 5 3 2 10 ]

xn = sin(2*pi*fs*t);


ln=length(xn); %find the length of the sequence
xk=zeros(1,ln); %initialize an array of same size as that of input sequence
ixk=zeros(1,ln); %initialize an array of same size as that of input sequence

%code block to find the DFT of the sequence

i=sqrt(-1);
%-----------------------------------------------------------
for k=0:ln-1
    for n=0:ln-1
        xk(k+1)=xk(k+1)+(xn(n+1)*exp((-i)*2*pi*k*n/ln));
    end
end
%------------------------------------------------------------


%code block to plot the input sequence


%------------------------------------------------------------
t=0:ln-1;
subplot(221);
stem(t,xn);
ylabel ('Amplitude');
xlabel ('Time Index');
%---------------------------------------------------------------




magnitude=abs(xk); % Find the magnitudes of individual DFT points

magnitude
%code block to plot the magnitude response



%------------------------------------------------------------
t=0:ln-1;
subplot(222);
stem(t,magnitude);
ylabel ('Amplitude');
xlabel ('K');

y=fft(xn);
y=abs(y);
y
t=0:ln-1;
subplot(223);
stem(t,y);
ylabel ('Amplitude');
xlabel ('K');