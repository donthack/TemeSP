%Exercitiul 5

F = 50;
t1 = 0:0.001:0.2;
s1 = 2*sin(2*pi*F*t1);
figure(1)


%a)

t2 = 0:0.01:0.2;
s2 = 2*sin(2*pi*F*t2);
subplot(3,1,2)
plot(t2,s2,'.-'),xlabel('Timp [s2]'),grid 

t3 = 0:0.0002:0.2;
s3 = 2*sin(2*pi*F*t3);
subplot(3,1,3)
plot(t3,s3,'.-'),xlabel('Timp [s3]'),grid 

%b)T1=0.02s
%  T2=
%  T3=0.02s

%c)
Fc = 20;
t = 0:0.001:0.2;
s = 2*cos(2*pi*F*t);
subplot(3,1,1)
plot(t1,s1,t,s),xlabel('Timp [s1;s2]'),grid 
