function [colors] = colorsFromSpectra(spectra) 
    global settings;
    colors = repmat(struct('rgb',[0 0 0], 'lab', [0 0 0]), size(spectra, 1), 1);
    
    rgb = roo2rgb(spectra, [], settings.wlRange);
    lab = roo2lab(spectra, [], settings.wlRange);
    lch = lab2lch(lab);
    
    for idx = 1:size(spectra, 1)
        colors(idx).rgb = rgb(idx, :);
        colors(idx).lab = lab(idx, :);
        colors(idx).lch = lch(idx, :);
        
        colors(idx).lch(2) = normalizeChroma(lch(idx, :));
    end
end
