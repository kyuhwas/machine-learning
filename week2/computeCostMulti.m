function J = computeCostMulti(X, y, theta)

% X: m(트레이닝 자료 쌍의 갯수) x n(feature의 갯수)
% y: m(트레이닝 자료 쌍의 갯수) x 1 (벡터)
% theta: n(feature의 갯수) x 1 (벡터)

% hypothesis에 각 X 값을 대입해 y 값과의 차를 구함
difference = X * theta - y;

% 트레이닝 셋의 갯수
m = length(y);

% 비용함수: 차 제곱들의 합을 갯수로 나누고 2로 나눔
J = (difference' * difference) / m * 0.5;

end
