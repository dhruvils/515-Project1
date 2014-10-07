function [haar_inv_coefs] = haar_inv_step(c, k)
    n = log(length(c)) / log(2);
    count = 2^(n-k);
    u = zeros(n+1, length(c));
    u(n-k+1,:) = c;
    
    for i = n-k+1:n
        u(i + 1,:) = u(i,:);
        for j = 1: count
            u(i + 1, 2*j - 1) = u(i, j) + u(i, (2^(i-1)) + j);
            u(i + 1, 2*j) = u(i, j) - u(i, (2^(i-1)) + j);
        end
        count = count * 2;
    end
    haar_inv_coefs = u(n+1, :);
end