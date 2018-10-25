function [colors] = colorsFromSpectra(spectra) 
    global settings;
    colors = repmat(struct('rgb',[0 0 0], 'lab', [0 0 0]), settings.dsSize, 1);
    
    rgb = roo2rgb(spectra, [], settings.wl);
    lab = roo2lab(spectra, [], settings.wl);
    
    for idx = 1:settings.dsSize
        colors(idx).rgb = rgb(idx, :);
        colors(idx).lab = lab(idx, :);
    end
end
