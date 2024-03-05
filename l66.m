%%Cascaded

% sys1=tf(10,[1 2 10]);
% sys2 =tf(5, [1 5]);
% 
% %sys1=ss(A1,B1,C1,D1); When given the state space form 
% 
% G1=series(sys1,sys2)   %series is for 2 at a time, better to use multiplication
% G1=sys1*sys2
%

%%Parallel
% G2=parallel(sys1,sys2)
% G2= sys1+sys2
% 
% %prints but not a tf
% printsys(10,[1 2 10]);

%%Feedback

% P=parallel(sys1, sys2)     % when two parallels are subtracting
% T=minreal(sys1/(1+(sys1*sys2)))   %minreal to simplify TF
% sys = feedback(sys1, sys2, -1)    %for negative feedback

%%
%Exercise 4C

TT1=tf([1 0],1) %s
TT2=tf(1, [1 0 0])  %1/s^2
TT3=tf(50, [1 1])   %50/s+1
TT4=tf(2, [1 0])   %2/s

TF=(TT1-2)*(TT3/(1+(TT3*TT4)))*TT2;
TF2= minreal((TF/(1+(TF*1))));

%%
%Exercise 7

clc
clear

%define subystems
G1=tf(1,[1 7]);   %tf(zpk([],[-7],[1]))
G2=tf(1,[1 2 3]);
G3=tf(1,[1 4]);
G4=tf(1,[1 0]);
G5=tf(5,[1 7]);
G6=tf(1,[1 5 10]);
G7=tf(3, [1 2]);
G8=tf(1,[1 6]);

%append subsystems
sys=append(G1,G2,G3,G4,G5,G6,G7,G8);

%input and output definitions
input=1;
output=7;
Q=[1 -2 -5 0; 2 1 8 0; 3 1 8 0; 4 1 8 0; 5 3 4 -6; 6 7 0 0; 7 3 4 -6; 8 7 0 0];  %coulumns must be the same
T=minreal(tf(connect(sys, Q, input, output)))
