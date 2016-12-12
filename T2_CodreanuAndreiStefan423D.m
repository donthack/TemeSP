P = 40; wo = 2*pi/P;			% perioada/frecventa

C0 = 36/1600				% termenul pentru n=0, integrala pe o perioada din semnal

t = -80:0.001:80;				% timpul semnalului

N = 25;			% Voma avea 50 de coeficienti (de la -25 pana la 25)
   
   x = C0*ones(size(t));		%
   
   for k = -N:-1,			% bucla pentru termenii negativi
      Xk =2*(exp(-j*k*wo*6)*(-6*j*k*wo+exp(6*j*wo*k)-1))/(j*j*k*k*wo*wo*P*P);       
                            %OBS: am calculat integrala pentru o functie 
                            % f={-2A*t/T, pt t intre 0 si 6
                            %     si 0 in rest              
      x = x + real(Xk*exp(j*k*wo*t));	%reconstruirea semnalului
   end;
   
   for k = 1:N,			% bucla pentru termenii pozitivi
      Xk =2*(exp(-j*k*wo*6)*(-6*j*k*wo+exp(6*j*wo*k)-1))/(j*j*k*k*wo*wo*P*P);               
      x = x + real(Xk*exp(j*k*wo*t));	
   end;

   plot(t,x,':');			
   hold on;
   plot([ -80 -74 -74 -40 -34 -34 0 6 6 40 46 46 80],[ 0 0.29 0 0 0.29 0 0 0.29 0 0 0.29 0 0   ],'-'); %semnalul initial
   hold off;
   hold off;
   xlabel('t ');
   ylabel('f(t)');
   titlevec = ['Semnalul x(t) n= ' num2str(-N),',..,',num2str(N)];
   title(titlevec);
   

clear;					% stergem memoria
figure(2); clf;			

P = 4; wo = 2*pi/P;			

D0 = 0.5;				

i = 1;					% vector pentru a memora Dn si w

for k = -25:-1,				
   Xk(i) = j/(2*pi*k)                  
   w(i) = k*wo;				
	i = i + 1;			
end;

Xk(i) = D0
w(i) = 0;	

i = i + 1;				

for k = 1:25			
   Xk(i) = j/(2*pi*k)                 
   w(i) = k*wo;				
   i = i + 1;				
end;
   
subplot(2,1,1);				% spectru semnalului
stem(w,abs(Xk),'filled');
xlabel('\omega ');
ylabel('|D_n|');
title('Spectru de Amplitudine');

subplot(2,1,2);				% spectru de faza
stem(w,angle(Xk),'filled');
xlabel('\omega ');
ylabel('\angle D_n ');
title('Spectru de faza');