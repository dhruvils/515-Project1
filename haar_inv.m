function [haar_inv_coefs] = haar_inv(c)
    count = 1;
    n = log(length(c)) / log(2);
    
    u(1,:) = c;
    for i = 1: n 
        u(i + 1,:) = u(i,:);
        for j = 1: count
            u(i + 1, 2*j - 1) = u(i, j) + u(i, (2^(i-1)) + j);
            u(i + 1, 2*j) = u(i, j) - u(i, (2^(i-1)) + j);
        end   
        count = count * 2;
    end
    haar_inv_coefs = u(n + 1,:);
end