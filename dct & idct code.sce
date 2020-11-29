
clc
close
clear 
a = [1 4 6 7]
//dct with inbuilt fn
l=dct(a)
//dct without inbuilt fn
N=length(a)
for f=0: N-1
    e(f+1)=0
    for x=0: N-1
        if f==0
            e(f+1)=e(f+1)+sqrt(1/N)*a(x+1)*cos(((2*x)+1)*%pi*f/(2*N));
        else
             e(f+1)=e(f+1)+sqrt(2/N)*a(x+1)*cos(((2*x)+1)*%pi*f/(2*N));
        end
            
       
          
    end
end
//idct without inbuilt fn
for x=0: N-1
    y(x+1)=0
    for f=0: N-1
        if f==0
            y(x+1)=y(x+1)+sqrt(1/N)*e(f+1)*cos(((2*x)+1)*%pi*f/(2*N))
        else
            y(x+1)=y(x+1)+sqrt(2/N)*e(f+1)*cos(((2*x)+1)*%pi*f/(2*N))
        end
            
       
          
    end
end
//idct built fn
u=idct(e)
disp("dct without inbuild fn",l)
disp("dct with built fn ",e)
disp("idct without inbuild fn",y)
disp("idct with built fn ",u)
