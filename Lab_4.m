clear; clc
%% Example 1
M = 2.4;
m = 0.23;
L = 0.36;
g = 9.81;



A = [0  1 0 0; ((M+m)*g)/(M*L) 0 0 0;...
    0 0 0 1; -m*g/M 0 0 0];
B = [0;-1/(M*L); 0; 1/M];
C = [L 0 1 0];
D = 0;

eig(A)
step(A,B,C,D); grid on

[num, denum] = ss2tf(A,B,C,D)

%[Z,P,K] = tf2zp(num, denum)

%% Example 2
K = 2.43;
tau = 0.12;
Kp = 4.14;
KI = 299.06;

sim('Lab4b')
set_param('Lab4b/Kp','Gain','1.2')
stepinfo(y,tout,1)




