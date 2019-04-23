function LowPass(filename)
[x,fs] = audioread(filename);
X = Fourier_Transform(filename);
plot(x)
N = length(x);
k = floor(N/12);
for i = k:(N-k)
    X(i) = 0;
endfor
xnew = ifft(X);
hold on
plot(abs(xnew))
hold off
audiowrite(sprintf("%s_lowpass.au",filename),xnew,fs);
endfunction
