%Exercise 1

%full rank: rank = order of the system (it is controllable, otherwise it is not)
%find determinant

det ([1 2; 2 4]); %0
rank([1 2; 2 4]); %1

%Check if the system is controllable
%A
A= [3 1; -7 -4];
B=[1 1]';
Co=ctrb(A,B)
rank(Co)

%C
[A B C D]=tf2ss([1 2 10],[1 10 121 700]);


%Exercise 2

J=[-1+2*i, -1-2*i,];
%acker(A,B,J);

%Exercise 2b

A= [0 1 0; 0 0 1; -501.6*10^-6 -128.8*10^-3  -854*10^-3]
B= [1 0 0]';
C=[0.78*10^-4 4.14*10^-4 0.01];
D=0;

%Stability of statespace
eig(A) %using poles
step(A,B,C,D); % using the graph

% For project, analyse the system before 
%is it controllable?