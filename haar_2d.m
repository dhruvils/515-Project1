function [haar_c] = haar_2d (m)
    [i, j] = size(m);
    for count = 1 : i
        haar_c(count,:) = haar(m(count,:));
    end
    for count = 1 : j
        haar_c(:,count) = transpose(haar(transpose(haar_c(:,count))));
    end
end