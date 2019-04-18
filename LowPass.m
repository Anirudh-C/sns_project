function LowPass(filename)
[x,fs] = audioread(filename);
X = Fourier_Transform(filename);
N = length(x);
for i = 1:N
    if (i > N/12)
        X(i) = 0;
    endif
endfor
xnew = ifft(X);
audiowrite(sprintf("%s_lowpass.au",filename),xnew,fs);
endfunction
