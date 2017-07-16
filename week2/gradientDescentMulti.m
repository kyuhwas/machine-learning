function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
% X, y는 트레이닝셋
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% 트레이닝 셋의 갯수
m = length(y);

% 반복 횟수에 따른 비용 함수의 변화
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % gradient descent 함수 적용
    temp = theta -1 * alpha / m * (X' * (X * theta - y));
    
    % 세타가 convergen이면 루프 탈출
    if theta == temp
        break;
    endif
                                   
    theta = temp;

    % 비용함수 계산
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
