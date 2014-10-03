function haar_handel()
    load handel;
    handel = y(1:65536);
    %sound(handel);
    haar_c = haar(handel);
    c1 = haar_c;
    c1(32768:end) = 0;
    haar_h = haar_inv(c1);
    sound(haar_h);
end