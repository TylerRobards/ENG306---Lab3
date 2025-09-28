D = [0, 10, 20, 30, 40, 50, 60, 70, 80, 85]*0.01;
V_o = [0, 1.5, 3.3, 5.21, 7, 9.2, 12, 13, 15, 16];
V_in = 20;
V_o_theoretical = D*V_in;
figure;
plot(D,V_o)
hold on;
plot(D,V_o_theoretical)
title('Duty Cycle vs Output Voltage')
xlabel('Duty Cycle')
ylabel('V_o (V)')
legend('Measured Output Voltage','Theoretical Output Voltage',Location='northwest')