clear; clc
%% Convolve Command
%a
conv([1, 2],[1, 5])

%b
conv([1 7 0 9],[1 -3 6 2 1])

%% Zeros, Poles and Gain of a TF
clear;clc
%[z p K] = tf2zp(num, denum)
% The gain, K is the coefficient of the...
% highest power of the numerator/(the coefficient of the highest power of
% the denumerator) i.e. the scalar multiplying the T.F.

[z p k] = tf2zp([1 1], [conv([1 2], [1 5])])
% The K is not the same as the DC gain  K is just the gain

K = dcgain([1 1], [conv([1 2], [1 5])])

%reversing and find tf from z p and k
[num,den]= zp2tf(-1,[-5 -2]', 1)

%a
num = [1 2];
denum = conv([1 1],[1 3]);

[z p k] = tf2zp(5*num,denum)
K = dcgain(5*num,denum)

%b
num1 = conv([1 3 7],[1 1]);
denum1 = conv([1 0 4],[1 2 100]);

[z p k] = tf2zp(num1,denum1)
K = dcgain(num1,denum1)

sys = tf(num1,denum1)
step(sys); grid on

%c
num2 = [30 66 30];
denum2 = [9 27 33 60];

[z p k] = tf2zp(num2,denum2);
K = dcgain(num2,denum2);

%%


num2 = [30 66 30];
denum2 = [9 27 33 60];
subplot(1,2,1)
sys = tf(num2,denum2)
step(sys)
subplot(1,2,2)
step(feedback(sys,1)) % Adding a feedback to control the output


%% Minimal TF: Pole-Zero Cancellation
% Also a control method. Not the best but can be used
clear;clc 
%minreal(sys)

%a
sys1 = tf([1 3 2],[1 8 19 12])
minreal(sys1)

%b
sys = tf([1 -1],[1 2 -3])
minreal(sys)

%% Solving system of equations in MATLAB
%x = inv(A)*b or x = A\b Ax=b
clear; clc


syms s I1 I2 I3 F

A = [(8*s^2+4*s+16) -(4*s+1) -15;...
    -(4*s+1) (3*s^2+20*s+1) -16*s;...
    -15 -16*s (16*s+15)];
B = [0;F;0];
X = inv(A)*B
pretty(X)
%%
% Example 4a
A = [2 -3; 4 8];
B = [10;7]
X = A\B

%%
% Control_Systems_HW_2
syms s I1 I2 V 

%Q1
A = [(2*s+3+(10/s)) -((5/(s))+3);...
     -(3+(5/(s))) (2*s + 6 +(5/s))]
B = [10;0];
X = inv(A)*B
f2=ilaplace()
pretty(X)

% syms s I1 I2 V
% 
% %Q2
% A = [(2*s+2)/0.5*s -(s+1)/0.5*s;...
%      -(s+1)/0.5*s (s^2+2*s+1)/0.5*s]
% B = [V;0];
% X = inv(A)*B
% pretty(X)