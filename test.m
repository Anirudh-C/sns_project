Fs = 44.1e3;
t = 0:1/Fs:1-1/Fs;
x = sin(2*pi*5000*t);
audiowrite("sine.au",x,44.1e3);
