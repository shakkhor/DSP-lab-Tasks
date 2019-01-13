%-MD MAHADI HASAN NAHID
%-Lecturer, CSE, SUST
%-CSE 426 - Digitall Signal Processing 

%Linear Convolution by fft, ifft

clear all;
close all;
clc;

x1=input('Enter the first sequence: ')
x2=input('Enter the second seqquence: ')
N1=length(x1)
N2=length(x2)

if N1>N2
    x2=[x2,zeros(N2-N1)]
end

if N2>N1
    x1=[x1,zeros(N2-N1)]
end

N=max(N1,N2)
X1=fft(x1,N);
X2=fft(x2,N);

X3=X1.*X2

x3=ifft(X3)

subplot(2,2,1);
stem(x1);
xlabel('n---->');
ylabel('amplitude');
title('First signal');

subplot(2,2,2)
stem(x2)
xlabel('n---->');
ylabel('Amplitude');
title('Second signal');

subplot(2,2,3)
stem(x3)
xlabel('n----->');
ylabel('Amplitude');
title('Linear convolution');

