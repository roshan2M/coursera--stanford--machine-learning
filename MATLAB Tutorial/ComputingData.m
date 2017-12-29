% Octave/Matlab Tutorial
% 3 - Computing on Data

A = [1 2; 3 4; 5 6];
B = [11 12; 13 14; 15 16];
C = [1 1; 2 2];
A*C; % Conventional multiplication of two matrices A and C
A.*B; % Element-wise multiplication of two matrices A and B
A.^2; % Element-wise squaring of matrix A
A'; % Transpose of the matrix A -> transpose(A)
(A')'; % Transpose of the transpose of A, which yields A
pinv(A); % (Pseudo)-inverse of A

v = [1; 2; 3];
1./v; % Element-wise reciprocal of vector v
log(v); % Element-wise logarithm (base e) of vector v
exp(v); % Element-wise exponentiation (exponent e) of vector v
abs([-1; -2; -3]); % Element-wise absolute value of a vector
-v; % Negative of vector v (element-wise multiplication by -1) -> -1 * v

v+ones(length(v), 1); % Incrementing each element in v by 1
v+1; % Incrementing each element in v by 1 (same as above)

a = [1 15 2 0.5];
val = max(a); % Returns the maximum element in a
[val, ind] = max(a); % Returns the maximum element and its index in a
a < 3; % Element-wise comparison to see if the element is less than 3
find(a < 3); % Finds all elements in a that are less than 3

A = magic(3); % Returns a 3x3 magic matrix
% A magic matrix has equal sums in all rows, columns, and diagonals
[r,c] = find(A >= 7); % Returns values of r (row) and c (column) such that an element in A >= 7
sum(a); % Returns the sum of all the elements in a
prod(a); % Returns the product of all the elements in a
floor(a); % Rounds down the elements of a to the nearest integer
ceil(a); % Rounds up the elements of a to the nearest integer

A = magic(5); % Creates a 5x5 magic square
I = eye(5); % Creates a 5x5 identity matrix
A.*I; % Element-wise multiplication of the matrices
sum(sum(A.*I)); % Returns the sum of the diagonal of A.*I
flipud(I); % Returns the flipped matrix I

