function [haar_c] = haar_2d_n (m)
    [i, j] = size(m);
    for count = 1 : i
        haar_c(count,:) = haar_n(m(count,:));
    end
    for count = 1 : j
        haar_c(:,count) = transpose(haar_n(transpose(haar_c(:,count))));
    end
end