%lab10
g = tf([1 3],conv([1 2],[1 2 25]));
bode (g)

%%
h = tf(5,1);
bode(h)

%%
i = tf([1 5],1)
bode(i)

%%
i = tf(5,[1 0])
bode(i)

%%
clear,clc
g = tf(10000,conv([1 5],conv([1 20],[1 50])));
bode (g)
[gm, Pm, W1, W2] = margin(g)


%%
%Exercise 2
clear,clc
g = tf(500*[1 5],conv([1 0],[1 4 16]));
bode(g)
[gm, Pm, W1, W2] = margin(g)



