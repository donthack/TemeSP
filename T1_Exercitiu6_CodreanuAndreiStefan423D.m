%Exercitiu 5
%a
t=0:0.0005:0.01;

s=rand(1,21);
for i=1:1:21
    if s(i:i)<0.5
        s(i:i)=0;
    else s(i:i)=1;
    end
end


figure(1)
plot(t,s)

%b)
Fs=12000;
N=10*12000;
n=0:N-1;
