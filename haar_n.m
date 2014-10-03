function [haar_coefs] = haar_n (u)
    count = length(u);
    n = log(count) / log(2);
    
    c(n+1,:) = u;
    for i = n: -1 : 1
        count = count / 2;
        c(i,:) = c(i + 1,:);
        for j = 1: count
            c(i,j) = (c(i + 1, 2*j - 1) + c(i + 1, 2*j)) / sqrt(2);
            c(i,(2 ^ (i-1)) + j) = (c(i + 1, 2*j - 1) - c(i + 1, 2*j)) / sqrt(2);
        end   
    end
    haar_coefs = c(1,:);
end