function retVal = Fourier_Transform(filename)
[x,fs] = audioread(filename);
X = fft(x);
plot(abs(X))
title (sprintf("DFT of x[n] for %s", filename));
xlabel("k");
ylabel("X[k]");
retVal = X;
return;
endfunction
