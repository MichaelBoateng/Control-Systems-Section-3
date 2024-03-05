%Example 1:Lines
axis([-6,8,-4,10]);
plot([-4,6],[4,4]);      %plot([x1,x2],[y1,y2])
hold on
plot([1,1],[-3,6]);
hold on
plot([1,5],[1,8]);
%%
% Example 2:Circles Method I
%?^2 + ?^2 = 3^2
r=3;
x0=0;
y0=0;
ezplot(@(x,y) (x-x0).^2 + (y-y0).^2 -r^2)
axis equal
hold on
%(? + 1)^2 + (? ? 2)^2 = 4
r=2;
x0=-1;
y0=2;
ezplot(@(x,y) (x-x0).^2 + (y-y0).^2 -r^2);
axis([-4,4,-4,4]);
%%

%Example 2: Circles Method II
r=3;
x0=0;
y0=0;
theta = linspace(0,2*pi,100);
plot(x0 + r*cos(theta),y0 + r*sin(theta),'-')
axis equal
axis([-4,4,-4,4]);
%%

% Example 3:Triangular wave

axis([0,8,-2,2]);
plot([0,2],[0,2],"b");      %plot([x1,x2],[y1,y2])
hold on
plot([2,6],[2,-2],"b");
hold on
plot([6,8],[-2,0],"b");
grid on
%%

% Example 4:3D drawing

t=0:pi/50:6*pi;
x=cos(t);
y=sin(t);
z=t;
plot3(x,y,z);
axis([-1,1,-1,1,0,20]);
grid on
%%

%Example 5:Rectangle
hold on
axis([-15,15,-10,10]);
rectangle('Position',[-5,-2,10,4],'FaceColor','r')
rectangle('Position',[-10,-5,20,10],'EdgeColor','r')
hold off

%%

% Example 6:Inverted-pendulum system
%Line
plot([0,3],[4,8],"r");
hold on
%Box of cart
rectangle('Position',[-3,1,6,3],'EdgeColor','b');
hold on
%1st wheel
r=0.5;
x0=-2;
y0=0.5;
theta = linspace(0,2*pi,100);
plot(x0 + r*cos(theta),y0 + r*sin(theta),"k");
hold on
%2nd wheel
r=0.5;
x0=2;
y0=0.5;
theta = linspace(0,2*pi,100);
plot(x0 + r*cos(theta),y0 + r*sin(theta),"k");
hold on
%3rd wheel
r=0.5;
x0=3;
y0=8;
theta = linspace(0,2*pi,100);
plot(x0 + r*cos(theta),y0 + r*sin(theta),"r");
axis([-6,6,0,10]);
%%

%Example 7: Basic Animation
%set parameters 
Nt=100;        %Number of time steps
xmin = 0.1;
xmax = 0.9;
yval = 0.3;
%dt = 0.03; %time step in seconds-change to vary speed
% create array
x=linspace(xmin,xmax, Nt);

%%animate position
for it=1:Nt
    plot ([x(1), x(it)],[yval, yval], 'b', x(it), yval, 'ro');
    axis([0,1,0,1]);
    %pause(dt)        %control the speed of the motion
    drawnow
end



%%

