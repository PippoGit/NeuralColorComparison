function [] = init()
    global settings;
    
    settings.wl = 380:1:800;
    
    [mSpectra, ~, settings.dsSize, settings.wavelen] = extractDataset();
    mColors = colorsFromSpectra(mSpectra);  
    
    [cSpectra, cColors] = generateCopies(mSpectra);
    
    ts = prepareTrainingSet(mSpectra, cSpectra);
    
    plotColorsMatrix(mColors);
    plotColorsMatrix(cColors);

end

