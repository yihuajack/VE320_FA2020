clear, clc
E=linspace(0,0.05170399431,1000);
x=linspace(0,2,1000);
% f=exp(-0.3*1.602176565*10^(-19)/(1.3806488*10^(-23)*300)-x);
f=1./(1+exp(0.3*1.602176565*10^(-19)/(1.3806488*10^(-23)*300)+x));
plot(E,f);
xlabel('E-E_c (eV)');
ylabel('f_F(E)');
axis([0 0.05170399431 0 1e-5]);
text(0.33,5e-6,'$f_F(E)=\frac{1}{1+\exp{\big(\frac{E-E_F}{kT}\big)}}$','Interpreter','latex');
saveas(gcf,'3-2(a)','epsc');     % Alternatively use function 'exportgraphics'
T=table(E',f');
writetable(T,'3-2(a).csv');
E=linspace(-0.05170399431,0,1000);
x=linspace(-2,0,1000);
f=1-1./(1+exp(-0.25*1.602176565*10^(-19)/(1.3806488*10^(-23)*300)+x));
plot(E,f);
xlabel('E-E_v (eV)');
ylabel('1-f_F(E)');
axis([-0.05170399431 0 0 1e-4]);
text(0.2,3.3e-5,'$f_F(E)=1-\frac{1}{1+\exp{\big(\frac{E-E_F}{kT}\big)}}$','Interpreter','latex');
saveas(gcf,'3-2(b)','epsc');
T=table(E',f');
writetable(T,'3-2(b).csv');