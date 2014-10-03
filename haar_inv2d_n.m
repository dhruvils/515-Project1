function [haar_inv_mat] = haar_inv2d_n (haar_m)
    [i, j] = size(haar_m);
    for count = 1 : j
        haar_inv_mat(:, count) = transpose(haar_inv_n(transpose(haar_m(:, count))));
    end
    for count = 1 : i
        haar_inv_mat(count, :) = haar_inv_n(haar_inv_mat(count, :));
    end
end