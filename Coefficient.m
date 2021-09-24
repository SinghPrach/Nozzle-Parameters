%% Initialization

Pr=logspace(-4,-1);

P=[1e-4,1e-3,1e-2,1e-1];

g=[1.1,1.2,1.3,1.4];

gx=1.1:0.01:1.4;

%% Function

Cf=@(a,b) sqrt(2).*a.*(2./(a+1)).^((a+1)./2./(a-1))*1./sqrt(a-1).*sqrt(1-b.^((a-1)./a));


%% Plotting
figure();
semilogx(Pr,Cf(g(1),Pr));
hold on
for i=2:length(g)
    semilogx(Pr,Cf(g(i),Pr));
end
hold off
grid on;
legend(["\gamma=1.1","\gamma=1.2","\gamma=1.3","\gamma=1.4"]);
xlabel("Pressure Ratio (Pe/P0)");
ylabel("Thrust Coefficient (C_f^0)");
title("Thrust Coefficient Vs Pressure Ratio - 23|PRACHISINGH");


figure();
plot(gx,Cf(gx,P(1)));
hold on
for i=2:length(P)
    plot(gx,Cf(gx,P(i)));
end
hold off
grid on;
legend(["P_r=0.0001","P_r=0.001","P_r=0.01","P_r=0.1"]);
xlabel("\gamma");
ylabel("Thrust Coefficient (C_f^0)");
title("Thrust Coefficient Vs \gamma - 23|PRACHISINGH");