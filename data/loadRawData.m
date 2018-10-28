function [spectra, coordinates, datasetSize, spectraSamples] = loadRawData() 
    spectra = [];
    coordinates = [];    

    load('dataset.mat', 'spectra', 'coordinates');
    spectra = (spectra*100)';
    datasetSize = size(coordinates, 2);
    spectraSamples = size(spectra, 2);
end
