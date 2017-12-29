% Octave/Matlab Tutorial
% 5.5 - Control Statements - Part 2

% Let's compute the best theta for a simple cost function J(theta)
X = [1 1; 1 2; 1 3]; % X is the "design matrix" containing training examples
y = [1; 2; 3]; % y is the vector containing class labels
theta = [0; 1]; % theta is the vector of coefficients on the line of best fit
J1 = costFunction(X, y, theta)

theta = [0; 0];
J2 = costFunction(X, y, theta)

function J = costFunction(X, y, theta)
m = size(X,1); % Number of training examples
predictions = X*theta; % Predictions of all hypothesis on m
squareError = (predictions - y).^2;

J = 1/(2*m) * sum(squareError);
end