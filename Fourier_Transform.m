function retVal = Fourier_Transform(filename)
[x,fs] = audioread(filename);
X = fft(x);
retVal = X;
return;
endfunction
