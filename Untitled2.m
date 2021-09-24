%%Given Parameters (All units in SI)

%% Reading input data from an excel sheet
path(path,'C:\Users\prach\Desktop\Assignment 1')
filename='Assignment Variables.xlsx' ;%%Name of file
gamma=xlsread(filename, 'B2:B2');
Tc = xlsread(filename, 'B3:B3'); %Kelvin
R = 8314;
MW = xlsread(filename, 'B4:B4'); %Molar Mass
Pc = xlsread(filename, 'B5:B5'); %Pascal
Pe = xlsread(filename, 'B6:B6'); %Pascal
Po = Pe; %Pascal
E = xlsread(filename, 'B7:B7'); %Area Ratio
Isp = xlsread(filename, 'B8:B8'); %Specific Impulse at Sea level in Seconds
Ft = xlsread(filename, 'B9:B9'); %Thrust
Theta = xlsread(filename, 'B10:B10');
beta = xlsread(filename, 'B11:B11');
SigmaC = xlsread(filename, 'B12:B12');
g = 9.81;

%% Calculation
Ve = g*Isp;
mdot = Ft/Ve;
Ru=R/MW;
Cp=gamma*Ru/(gamma-1)
lamda=(gamma)^0.5*(2/gamma+1)^((gamma+1)/(2*(gamma-1)));
Te=Tc-Ve^2/(2*Cp)
%% Exit Parameters
Ae=mdot/(Pc*(2*gamma*MW/((gamma-1)*R*Tc)*(Pe/Pc)^(2/gamma)*(1-(Pe/Pc)^((gamma-1)/gamma)))^0.5)
Re=(Ae/pi)^0.5
Ldn=Re*1/tand(Theta)
%% Throat Parameters
At=Ae/E
Rt=(At/pi)^0.5
%% Combustion Chamber Parameters
Ac=3*At
rc=(Ac/pi)^0.5
Lcn=rc/tand(beta)
L1=1
Lc=At*L1/Ac
twall=Pc*rc/(2*SigmaC)


