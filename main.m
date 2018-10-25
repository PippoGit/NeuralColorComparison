global settings;

settings.wlrange = 380:1:800;
settings.dsSize = 0;
settings.wavelen = 0;

settings.rmin = 1;
settings.rmax = 1.13;
settings.rseed = 1;

%% Extract dataset
[mSpectra, ~, settings.dsSize, settings.wavelen] = extractDataset();
mColors = colorsFromSpectra(mSpectra);  

%% Generate Training Set
cSpectra = generateCopies(mSpectra);
ts = prepareTrainingSet(mSpectra, cSpectra);

%% Visualize Output
plotColorsMatrix(mColors);
plotColorsMatrix(cColors);