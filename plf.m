function plf( u )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

count = length(u);
x = double(count);
for i = 1 : count
    x(i) = i / count;
end
stairs(x, u)
    
end

