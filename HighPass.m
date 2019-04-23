function HighPass(filename)
[x,fs] = audioread(filename);
X = Fourier_Transform(filename);
plot(x)
N = length(x);
k = floor(N/12);
for i = 1:k
    X(i) = 0;
endfor
for i = N-k:N
    X(i) = 0;
endfor
xnew = ifft(X);
hold on
plot(abs(xnew))
hold off
audiowrite(sprintf("%s_highpass.au",filename),xnew,fs);
endfunction
