function plotColorsMatrix(colors)
    N = sqrt(size(colors));

    for idx=1:N
        for idy=1:N
            pos = [idx-1 idy-1 1 1];
            rgb = colors(idx*idy,:).rgb;
            rectangle('Position', pos, 'FaceColor', rgb);
        end
    end
end

