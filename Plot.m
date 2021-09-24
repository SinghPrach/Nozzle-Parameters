%% Initialization

Pe=logspace(3,5,20);
P0=20*10^6;
g=1.2; %Gamma
At=0.0459;
AR=sqrt((g-1)/2*(2/(g+1))^((g+1)/(g-1)))./sqrt((Pe/P0).^(2/g).*(1-(Pe/P0).^((g-1)/g)));
Ae=At*AR;

Re=sqrt(1/pi*Ae);

%% Plotting
figure();
semilogx(Pe,Ae);
%axis([10,10^5,0,10]);
grid on
xlabel("Pressure (in Pa)");
ylabel("Exit Area (in m^2)");
title("Exit Area Vs Exit Pressure - 23|PRACHISINGH");
set(gca,'XDir','reverse');

figure();
semilogx(Pe,Re);
%axis([10,10^5,0,10]);
grid on
xlabel("Pressure (in Pa)");
ylabel("Exit Radius (in m)");
title("Exit Radius Vs Exit Pressure - 23|PRACHISINGH");
set(gca,'XDir','reverse');