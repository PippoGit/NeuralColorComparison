function [input] = fuzzyInput(set)
    global settings;
    
    fs = zeros(settings.dsSize*settings.nCopies, 3);
    for idx=1:settings.dsSize*settings.nCopies
        fs(idx, :) = set(idx).mColor.lch;
    end
    input = [fs, [set.de]'];
end

