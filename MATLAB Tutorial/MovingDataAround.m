% Octave/Matlab Tutorial
% 2 - Moving Data Around

A=[1,2;3,4;5,6] % Creates a new matrix
A(3,2) % Returns the element at the 3rd row and 2nd column
A(2,:) % Returns all elements in the 2nd row
A(:,2); % Returns all elements in the 2nd column
A(:,:); % Returns all elements in A
A(:) % Returns all the elements of A into a column vector

B=[10,11;12,13;14,15];
C=[A,B] % Puts matrices A next to B

size(A); % Returns the size of the matrix (as a 1x2 matrix)
s=size(size(A)); % Returns the size of the size matrix
size(A, 1); % Returns the 1st element of the size
size(A, 2); % Returns the 2nd element of the size

v = [1,2,3,4];
length(v) % Returns the length of the longest dimension
length(A);
length([1;2;3;4;5]);

% who; % Shows all the variables in the workspace
clear A; % Clears the memory of a variable
% whos; % Shows all the details of variables in the workspace