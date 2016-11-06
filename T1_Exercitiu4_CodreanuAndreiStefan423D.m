%a)
%Cream vectorii z, n, m
for i=1:1:21
    if i==6
        z(i:i)=1;
    else z(i:i)=0;
    end
end

n=0:20

%cream prima minifereastra si reprezantam z in fuctie de n, folosim functia
%figure inainte de fiecare comanda grafica ca sa ne apara toate graficele necesare

figure(1)

subplot(1,2,1)
stem(n,z)

m=-5:15;

%cream a doua minifereastra si reprezentam z in fuctie de m

subplot(1,2,2)
stem(m,z)

%b)
for y=1:1:21
    t(y:y)=abs(10-n(y:y))
end
 
figure(2) 

stem(n,t)

%c)
k=-15:25
for l=1:1:41
    x1(l:l)=sin((pi/17)*k(l:l));
end

o=0:50
for p=1:1:51
    x2(p:p)=cos((pi/sqrt(23))*o(p:p));
end

figure(3)
plot(k,x1,o,x2)

figure(4)
subplot(2,1,1)
stem(k,x1)

subplot(2,1,2)
stem(o,x2)
