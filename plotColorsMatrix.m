function [] = plotColorsMatrix(colors)
    
    for idx=1:sqrt(size(colors))
        for idy=1:sqrt(size(colors))
            rectangle('Position', [idx-1 idy-1 1 1], 'FaceColor', colors(idx*idy, :).rgb);
        end
    end
end

