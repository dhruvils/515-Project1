function plf( u )
%PLF plotter

count = length(u);
x = double(count);
for i = 1 : count
    x(i) = i / count;
end
stairs(x, u)

