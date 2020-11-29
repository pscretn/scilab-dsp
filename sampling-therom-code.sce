clc
clear
fm=20
t=0:0.001:0.1
x=sin(2*3.14*fm*t)
subplot(2,2,1)
plot(t,x)
xlabel ("time")
ylabel("amplitude")
title("sine")
//fs>2fm//
fs1=800
n=0:1/fs1:0.1
y1=sin(2*3.14*fm*n)
subplot(2,2,2)
plot2d3(n,y1)
subplot(2,2,2)
plot(n,y1)
xlabel ("time")
ylabel("amplitude")
title("fs > 2fm")
//fs=2fm
fs1=40
n=0:1/fs1:0.1
y1=sin(2*3.14*fm*n)
subplot(2,2,3)
plot2d3(n,y1)
subplot(2,2,3)
plot(n,y1)
xlabel ("time")
ylabel("amplitude")
title("fs = 2fm")
//fs<2fm//
fs1=27
n=0:1/fs1:0.1
y1=sin(2*3.14*fm*n)
subplot(2,2,4)
plot2d3(n,y1)
subplot(2,2,4)
plot(n,y1)
xlabel ("time")
ylabel("amplitude")
title("fs < 2fm")
