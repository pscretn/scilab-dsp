clc
clear
close
//continous ramp//
x=[0:1:8]
subplot(3,2,1)
title("Continous ramp ")
plot(x,x)
xlabel('time')
ylabel("amplitude")
//continous step//
subplot(3,2,2)
y=[ones(1,9)]
plot(x,y)
xlabel('time')
ylabel("amplitude")
title("continous step")

//continous exponential//
subplot(3,2,3)
x=[0:0.1:1]
y=exp(x);
plot(x,y)
xlabel('time')
ylabel("amplitude")
title("continous exponential ")

//continous sine//
subplot(3,2,4)
x=[-%pi:0.01:%pi]
y=sin(x);
plot(x,y)
xlabel('time')
ylabel("amplitude")
title("continous sine ")

//continous impulse//
x=-6:6
y=[0,0,0,0,0,0,1,0,0,0,0,0,0]
subplot(3,2,5)
plot(x,y)
xlabel('time')
ylabel("amplitude")
title("continous impulse ")
//continous cosine//
subplot(3,2,6)
x=[-%pi:0.01:%pi]
y=cos(x)
plot(x,y)
xlabel('time')
ylabel("amplitude")
title("continous cosine ")
