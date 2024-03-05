clc
clear

Kpot=0.318;
K=22.985;
%changing the values of K to get desired output
%tuning
K1=100;
a=100;
Km=2.083;
am=1.71;
Kg=0.1;

num=K*K1*Kg*Km*Kpot;
den=[1 (am+a) (a*am) K*K1*Kg*Km*Kpot];

sys=tf(num,den);
%orstepinfo(sys)
step(0.5*sys,[1:0.01:10])
[y,t]=step(0.5*sys);% the number of radians we want the antenna to move
%the plant in the system has a integral term so the steady state value=
%desired value
spec=stepinfo(y,t,0.5);
sett_time=spec.SettlingTime
overshoot=spec.Overshoot