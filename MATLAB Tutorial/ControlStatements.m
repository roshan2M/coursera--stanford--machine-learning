% Octave/Matlab Tutorial
% 5 - Control Statements

v = zeros(10,1); % Creates a vector of 10 zeros in 1 column

% For loop to set each value of the vector to 2^i
for i=1:10
    v(i)=2^i;
end
v

% While loop to set the first 5 elements of vector v to 100
i=1;
while i<=5
    v(i)=100;
    i=i+1;
end
v

% While loop to set the first 5 elements of vector v to 999
i=1;
while true
    v(i)=999;
    i=i+1;
    
    if i==6
        break;
    end
end
v

% If statement to show that the first element of vector v is 2
v(1)=2;
if v(1)==1
    disp('The value is 1');
elseif v(1)==2
    disp('The value is 2');
else
    disp('The value is neither 1 nor 2');
end

% Testing out functions
square(5)
[a,b] = squareAndCube(3)

% ALL functions MUST go at the bottom of the script
% Function to square a number x
function y = square(x)
y = x^2;
end

% Function to square and cube a number x
function [y1,y2] = squareAndCube(x)
y1 = x^2;
y2 = x^3;
end
