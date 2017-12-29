function [J grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)
%NNCOSTFUNCTION Implements the neural network cost function for a two layer
%neural network which performs classification
%   [J grad] = NNCOSTFUNCTON(nn_params, hidden_layer_size, num_labels, ...
%   X, y, lambda) computes the cost and gradient of the neural network. The
%   parameters for the neural network are "unrolled" into the vector
%   nn_params and need to be converted back into the weight matrices. 
% 
%   The returned parameter grad should be a "unrolled" vector of the
%   partial derivatives of the neural network.
%

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight matrices
% for our 2 layer neural network
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

% Setup some useful variables
m = size(X, 1);

% You need to return the following variables correctly 
J = 0;
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));

% ====================== YOUR CODE HERE ======================
% Instructions: You should complete the code by working through the
%               following parts.
%
% Part 1: Feedforward the neural network and return the cost in the
%         variable J. After implementing Part 1, you can verify that your
%         cost function computation is correct by verifying the cost
%         computed in ex4.m

% Formatting the data matrix and the outputs
eye_matrix = eye(num_labels);
y_matrix = eye_matrix(y,:);

% Map from layer 1 to layer 2 in the neural network
a1 = [ones(m, 1) X];
z2 = a1 * Theta1';
a2 = sigmoid(z2);
a2 = [ones(m,1) a2]; % Adding a bias unit

% Map from layer 2 to layer 3 in the neural network
z3 = a2 * Theta2';
a3 = sigmoid(z3); % Output matrix

% Compute cost
J = (1/m)*(sum(sum((-y_matrix).*log(a3)-(1-y_matrix).*log(1-a3))));

% Regularized cost
% New Theta's are used for backpropagation as well
Theta1new = Theta1(:,2:end); % Removing the bias unit
Theta2new = Theta2(:,2:end);
regularizationCost = (lambda/(2*m)) .* ((sum(sum(Theta2new.^2))) + (sum(sum(Theta1new.^2))));
J = J + regularizationCost; % Updating the cost

%
% Part 2: Implement the backpropagation algorithm to compute the gradients
%         Theta1_grad and Theta2_grad. You should return the partial derivatives of
%         the cost function with respect to Theta1 and Theta2 in Theta1_grad and
%         Theta2_grad, respectively. After implementing Part 2, you can check
%         that your implementation is correct by running checkNNGradients
%
%         Note: The vector y passed into the function is a vector of labels
%               containing values from 1..K. You need to map this vector into a 
%               binary vector of 1's and 0's to be used with the neural network
%               cost function.

% Calculate differences and backpropagating
d3 = a3 - y_matrix;
d2 = (d3 * Theta2new).*sigmoidGradient(z2); % Tricky to compute

% Used to compute the partial derivatives
Delta1 = d2' * a1;
Delta2 = d3' * a2;

% Computing the partial derivatives
Theta1_grad = (1/m) * Delta1;
Theta2_grad = (1/m) * Delta2;

%
% Part 3: Implement regularization with the cost function and gradients.
%
%         Hint: You can implement this around the code for
%               backpropagation. That is, you can compute the gradients for
%               the regularization separately and then add them to Theta1_grad
%               and Theta2_grad from Part 2.
%

% Ignore the first column of the Theta gradients and regularize the rest
Theta1_grad(:,2:end) = Theta1_grad(:,2:end) + (lambda/m)*Theta1(:,2:end);
Theta2_grad(:,2:end) = Theta2_grad(:,2:end) + (lambda/m)*Theta2(:,2:end);

% -------------------------------------------------------------

% =========================================================================

% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];

end
