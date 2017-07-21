function p = predict(theta, X)
%PREDICT Predict whether the label is 0 or 1 using learned logistic 
%regression parameters theta
%   p = PREDICT(theta, X) computes the predictions for X using a 
%   threshold at 0.5 (i.e., if sigmoid(theta'*x) >= 0.5, predict 1)

% 트레이닝 셋 갯수
m = size(X, 1);

% 0.5 이상이면 1 미만이면 0을 반환할 벡터
p = zeros(m, 1);

% Sigmoid 함수를 적용한 뒤 0.5 이상이면 일괄적으로 1로 바꿔줌 아니면 0
p = sigmoid(X * theta) >= 0.5;


end
