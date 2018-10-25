%% Extract Laba from dataset
function [spectra, coordinates, datasetSize, spectraWave] = extractDataset() 
    spectra = [];
    coordinates = [];    

    load('data/dataset.mat', 'spectra', 'coordinates');
    spectra = (spectra*100)';
    datasetSize = size(coordinates, 2);
    spectraWave = size(spectra, 1);
end
