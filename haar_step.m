function [haar_coefs] = haar_step (u, k)
    count = length(u);
    n = log(count) / log(2);
    
    c(n+1,:) = u;
    num_steps = 0;
    for i = n: -1 : 1
        if num_steps < k
            num_steps = num_steps + 1;
            count = count / 2;
            c(i,:) = c(i + 1,:);
            for j = 1: count
                c(i,j) = (c(i + 1, 2*j - 1) + c(i + 1, 2*j)) / 2;
                c(i,(2 ^ (i-1)) + j) = (c(i + 1, 2*j - 1) - c(i + 1, 2*j)) / 2;
            end 
        else 
            break;
        end
    end
    haar_coefs = c(n - k + 1,:);
end