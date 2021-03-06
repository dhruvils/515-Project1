function [haar_c] = haar_2d_step (m, k)
    [i, j] = size(m);
    for count = 1 : i
        haar_c(count,:) = haar_step(m(count,:), k);
    end
    for count = 1 : j
        haar_c(:,count) = transpose(haar_step(transpose(haar_c(:,count)), k));
    end
end