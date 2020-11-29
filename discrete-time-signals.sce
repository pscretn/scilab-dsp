clc
clear
close
x=[0:1:9]
//discrete ramp//
subplot(3,2,1)
title("discrete ramp ")
plot2d3(x,x)
xlabel('time')
ylabel("amplitude")
//discrete step//
y=[ones(1,10)]
subplot(3,2,2)
plot2d3(x,y)
title("discrete step ")
xlabel('time')
ylabel("amplitude")
//discrete exponential// 
subplot(3,2,3)
x=[0:0.1:1]
y=exp(x);
plot2d3(x,y)
title("discrete exponential ")
xlabel('time')
ylabel("amplitude")
//discrete sine//
subplot(3,2,4)
x=[-%pi:0.05:%pi]
y=sin(x);
plot2d3(x,y)
title("discrete sine ")
xlabel('time')
ylabel("amplitude")
//discrete impulse  //

subplot(3,2,5)
plot2d3(0,5)
title("discrete impulse ")
xlabel('time')
ylabel("amplitude")
//discrete cosine//
subplot(3,2,6)
x=[-%pi:0.05:%pi]
y=cos(x);
plot2d3(x,y)
title("discrete cosine ")
xlabel('time')
ylabel("amplitude")
