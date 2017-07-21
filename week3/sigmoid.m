function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

g = zeros(size(z));

% 받은 벡터z의 elements를 각각 sigmoid 함수에 넣어줌
g = 1 ./ (1 + (e.^-z));


end
