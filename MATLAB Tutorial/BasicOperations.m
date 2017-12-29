% Octave/Matlab Tutorial
% 1 - Basic Operations

% Addition, subtraction, multiplication, division, exponentiation
5+6;
2-3;
5*8;
1/2;
3^4;

% Logical operations
1==2; % false(0)
1~=2; % true(1)
1&&0; % AND
1||0; % OR
xor(1,0); %XOR - exclusive or

% Variables
a=3;
b=6; % Semicolon supresses printing output
b='hi';
c=(3>=1);
a=pi;
disp(a);
disp(fprintf('2 decimals: %0.2f\n', a));
format long; % Formats the value as a long data type
a
format short; % Formats the value as a short data type
a

% Vectors and matrices
A=[1 2; 3 4; 5 6]; % Creates a 3x2 matrix
A=[1 2;
    3 4;
    5 6]
v=[1 2 3];
transpose(v) % Calculates the transpose of v
x=1:0.1:2 % Creates a row vector starting at 1 incremented by 0.1 until 2
y=1:6;
ones(2,3); % Creates a 2x3 matrix filled with 1s
eye(4) % Creates a 4x4 identity matrix
w=rand(1,3) % Creates a 1x3 matrix filled with random numbers using normal distribution
u=randn(1,3); % Creates a 1x3 matrix filled with random numbers using Gaussian distribution
m=-6+sqrt(10)*(randn(1,10000));
hist(m); % Creates a histogram of values in the 10000-dimensional row vector
help eye; % Retrieves information on the eye function, or any function for that matter