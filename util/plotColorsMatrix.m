function plotColorsMatrix(colors)
    N = sqrt(size(colors));
    x = 0;
    y = 0;
    
    for idx=1:size(colors)
        rgb = colors(idx,:).rgb;
        
        if(x >= N)
            x = 0;
            y = y + 1;
        end
        
        pos = [x y 1 1];
        rectangle('Position', pos, 'FaceColor', rgb);
        
        x = x+1;
    end
end

