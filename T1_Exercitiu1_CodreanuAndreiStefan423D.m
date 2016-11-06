%Exercitiul 1

%a)

%Vectorul b trebuie sa aiba 21 de elemente.

a=0:0.1:2;
b=ones(21,1);
m1=a*b

%Se realizeaza inmultirea a doua matrici.

%b)

m2=b*a

%c)

for i=1:1:21
    for j=1:1:21
       a(i:i)*b(j:j)
    end
end
