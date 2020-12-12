clc,clear
x=linspace(-1e-6,1e-5,1000);
y=5e14.*(x<0)+5e14*exp(-2e6*x).*(x>=0&x<=2e-6)+(-4.9084e14*exp(-2e6*x+4)+5e14).*(x>2e-6);
plot(x,y);
axis([-1e-6 1e-5 0 6e14]);