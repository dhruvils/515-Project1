function [haar_inv_coefs] = haar_inv_step(c, k)
    count = 1;
    n = log(length(c)) / log(2);
    
    u(1,:) = c;
    for i = 1: k 
        u(i + 1,:) = u(i,:);
        for j = 1: count
            u(i + 1, 2*j - 1) = u(i, j) + u(i, (2^(i-1)) + j);
            u(i + 1, 2*j) = u(i, j) - u(i, (2^(i-1)) + j);
        end   
        count = count * 2;
    end
    haar_inv_coefs = u(k + 1, :);
end