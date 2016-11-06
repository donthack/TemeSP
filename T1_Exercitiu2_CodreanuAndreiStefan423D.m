%Exercitiul2

%generam vectorul cu distributie normala
g=randn(1,10);

%parcurgem vectorul si alegem valorile mai mici ca zero

for i=1:1:10
    if g(i:i)<0
        g(i:i)
    end
end
        