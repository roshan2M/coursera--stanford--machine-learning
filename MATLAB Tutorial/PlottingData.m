% Octave/Matlab Tutorial
% 4 - Plotting Data

t = [0:0.01:0.98];
y1 = sin(2*pi*4*t); % A sine function of t
plot(t,y1); % Plots t versus y1
y2 = cos(2*pi*4*t); % A cosine function of t
plot(t,y2); % Plots t versus y2

plot(t,y1);
hold on; % Keeps the previous plot
plot(t,y2); % Plots t versus y2 over t versus y1
xlabel('Time (s)'); % Labels the x-axis
ylabel('Value'); % Labels the y-axis
legend('sine','cosine'); % Creates a legend of the functions
title('Sinusoidal Functions'); % Labels the graph
% Saves the graph in a png file in a designated folder
cd 'D:\School\Online Courses\Coursera\Machine Learning\MATLAB Tutorial\'; print -dpng 'SinusoidalPlot.png';
close; % Closes the plot in the IDE

% figure(1); plot(t,y1); % Creates a new plot called figure 1
% figure(2); plot(y1,y2); % Creates a new plot called figure 2
subplot(1,2,1); % Divides plot into a 1x2 grid, accesses first element
plot(t,y1); % Plots the sine function on the left side
subplot(1,2,2); % Divides plot into a 1x2 grid, accesses second element
plot(y1,y2); % Plots the cosine function on the right side
axis([0.5 1 -1 1]); % Horizontal
clf; % Clears a figure

% A = magic(5);
% imagesc(A);
imagesc(magic(15)), colorbar, colormap gray;