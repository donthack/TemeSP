B=T1_Exercitiu3a_CodreanuAndreiStefan423D();

%Apelam functia creata de noi pentru a obtine vectorul A si introducem
%valorile in vectorul B

% Calculam media aritmetica a valorilor (parti reale) din B

med=mean(real(B));

%Luam toate valorile din B si le ridicam la patrat

for i=1:1:6
    C(i:i)=B(i:i)^2
end

%Inmultim Matricea initiala cu transpusa

D=B*B.'