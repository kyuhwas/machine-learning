function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% 트레이닝 셋 갯수
m = length(y);

% 비용 함수 계산 결과
J = 0;

% Gradient Descent 결과를 담을 벡터
grad = zeros(size(theta));

% sigmoid function 적용
sig = sigmoid(X * theta);

% regularization용 theta는 0번째가 0임
theta = [0; theta(2:size(theta))]

% 공식에 따라서 비용 계산
J = ((-y)' * log(sig) + (-1 + y)' * log(1 - sig)) / m + lambda * (theta' * theta) / (2 * m) 

% Gradient Descent 계산
grad = (X' * (sig - y)) / m + lambda / m * theta

end
