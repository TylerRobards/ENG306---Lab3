Vin=10;
D=[0,10,20,30,40,50,60,70,80,85]*0.01;
Vo=[0,0.6,1.4,2.9,4.5,7.3,10.5,14.4,19.0,20.2];
Votheory=Vin*(D./(1.-D));
figure;
plot(D,Vo)
hold on;
plot(D,Votheory)
title('Output Voltage vs Duty Cycle')
xlabel('Duty Cycle')
ylabel('V_0 (V)')
legend('Measured Output Voltage','Theoretical Output Voltage',location='northwest')
