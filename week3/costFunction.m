function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% 트레이닝 셋의 갯수
m = length(y);

% cost
J = 0;

% 각 theta 별 편미분 값
grad = zeros(size(theta));

% 각 feature와 트레이닝 셋을 곱한 후 sigmoid 함수에 넣어 나오는 값
sig = sigmoid(X * theta);

% 단순히 cost function에 앞에서 구한 값을 대입함
J = ((-y)' * log(sig) + (-1 + y)' * log(1 - sig)) / m

% theta 별 편미분 값
grad = (X' * (sig - y)) / m




% =============================================================

end
