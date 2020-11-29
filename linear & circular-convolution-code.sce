clc 
clear 
close
x=[1 2 3 4 5]
h=[4 5 ]
linear=convol(x,h)
disp("linear convol =", linear)
l1=length(x)
l2=length(h)
n=l1+l2-1
hrev=h(:,$:-1:1)
x1=[zeros(1,l2-1),x]
h1=[hrev,zeros(1,l1-1)]
for i=1:n
    y1=x1.*h1
    y(i)=sum(y1)
    for j=n:-1:2
        h1(j)=h1(j-1)
    end
    h1(1)=0
    
end
disp ('y=',y)

 subplot(3,1,1)
 plot2d3(y)
 title('linear convolution')
 // circular convolution  //
 M=max(l1,l2)
 x1=[x zeros(1,M-l1)]
 h1=[h zeros(1,M-l2)]
 ccirc=ifft(fft(x1).*fft(h1))
 disp('circular=',ccirc)
  subplot(3,1,2)
 plot2d3(ccirc)
 title('circular convolution')
 
 //linear convoultion using circular convolution //
 N=l1+l2-1
 xpad=[x zeros(1,N-l1)]
 hpad=[h zeros(1,N-l2)]
 clinear=ifft(fft(xpad).*fft(hpad))
 disp('linear using circular=',clinear)
  subplot(3,1,3)
 plot2d3(clinear)
 title('linear convolution using circular convolution')
