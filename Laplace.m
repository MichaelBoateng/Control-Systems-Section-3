%% Sample Codes for Quizzes and Examinations 3 - Laplace and ilaplace
syms t s
a = t^3 * sin(2*t + pi); 
laplace(a)

b = 3*exp(-s)/s^3;

partfrac(b,s);
