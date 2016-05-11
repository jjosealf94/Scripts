% ondas de cAMP en Dictyostelium

clear; close;

dx=0.01;			% resolucion espacial
x=(-1:dx:1);	% grid en x
Lx=length(x);	% numero de puntos
dt=0.01;			% incremento temporal
tmax=25;			% tiempo maximo
jrec=50;			% intervalo de registro
k=10;
B=4;
io=0.1;
D=1e-07;
sigma=0.1;
% initial conditions
t=0;					% tiempo
j=0;					% indice de registro

% inicializar c y i 
c=exp(-1*x.^2/(2*sigma));
i=io;

%Funcion
while t<tmax;

   % pintar cada jrec ciclos
   j=j+1;
   if(mod(j,jrec)==0)
       figure();
    	plot(x,c,'g',x,i,'r');
    	axis([-1 1 0 1])
    	drawnow;
   end
   
   % segunda derivada
   newc = [c(2) c c(Lx-1)];			% condiciones de frontera sin flujo
   c1=newc(1:Lx);
   c2=newc(2:Lx+1);
   c3=newc(3:Lx+2);
   ddc=(c1+c3-2*c2)/(dx*dx);			% segunda derivada de c
   
   dc=((c.^2/(B*i.^2+c.^2))-c+(D*ddc))*dt;	% dcdt
   di=(k*(c-i))*dt;	% didt
   
   % actualizar variables
   c=c+dc;
   i=i+di;
   t=t+dt;
   
end


