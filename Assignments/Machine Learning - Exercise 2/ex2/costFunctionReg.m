function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

% Creates the original h_of_x
h_x = sigmoid(X * theta);

% Creates the theta with a 0 as theta_1 (ignores first element)
theta_n = [0; theta(2:length(theta))];

% Calculates the cost and adds it to the regularized
J = ((-1/m) * sum(y'*log(h_x) + (1-y)'*log(1-h_x))) + (lambda/(2*m) * (theta_n'*theta_n));

% Calculates all the gradients and then adds the regularized theta's
grad = ((1/m) * (X'*(h_x-y))) + ((lambda/m) .* theta_n);

% =============================================================

end
