global settings;
settings = nccSetup();

%% Extract dataset
[mSpectra, ~, settings.dsSize, settings.samples] = extractDataset();
mColors = colorsFromSpectra(mSpectra);  

%% Generate Training Set
ts = prepareTrainingSet(mSpectra);

%% Visualize Output
plotColorsMatrix(mColors);