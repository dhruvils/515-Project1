function [haar_inv_mat] = haar_inv2d_step (haar_m, k)
    [i, j] = size(haar_m);
    for count = 1 : j
        haar_inv_mat(:, count) = transpose(haar_inv_step(transpose(haar_m(:, count)), k));
    end
    for count = 1 : i
        haar_inv_mat(count, :) = haar_inv_step(haar_inv_mat(count, :), k);
    end
end