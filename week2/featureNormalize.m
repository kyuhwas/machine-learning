function [X_norm, mu, sigma] = featureNormalize(X)

% 노멀라이즈한 X 값
X_norm = [];

% 평균
mu = mean(X);

% 표준편차
sigma = std(X);

% X의 열 길이로 반복
for iter = 1:size(X,2)
    % 각 열 노멀라이즈 해줌
    X_norm = [X_norm, (X(:, iter) - mu(1, iter))/sigma(1, iter)];
end

end
