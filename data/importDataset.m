function [set] = importDataset()
    global settings;
    [mSpectra, ~, settings.dsSize, settings.samples] = loadRawData();
   
    %% Show raw data
    masterColors = colorsFromSpectra(mSpectra);
    plotColorsMatrix(masterColors);
    
    %% Generate copies and prepare dataset
    N = settings.nCopies * settings.dsSize;
    z = zeros(settings.samples, 1);
    set = repmat(struct('master', z, 'copy', z, 'de', 0, 'mColor', 0, 'cColor', 0), N, 1);  
    copies = generateCopies(mSpectra);
    
    for i=1:settings.nCopies
        copy = copies(i).spectra;
        colors = [masterColors colorsFromSpectra(copy)];

        for idx=1:settings.dsSize
            index = (i-1)*(settings.dsSize)+idx;
            set(index).master = mSpectra(idx, :);
            set(index).copy = copy(idx, :);
            set(index).mColor = colors(idx, 1);
            set(index).cColor = colors(idx, 2);
                        
            set(index).de = de(colors(idx, 1).lab, colors(idx, 2).lab);
        end
    end

end