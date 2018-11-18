function out = customFuzzyRed(x, params)
%CUSTOMFUZZYRED Summary of this function goes here
%   Detailed explanation goes here

for i = 1:length(x)
    if x(i) < params(1)
        y(i) = -x(i)/params(1) + 1;
    elseif x(i) < params(2)
        y(i) = 0;
    elseif x(i) < params(3) 
        y(i) = (x(i)-params(2))/(params(3)-params(2));
    elseif x(i) <= params(4)
        y(i) = 1;
    end
end

out = y';
end

