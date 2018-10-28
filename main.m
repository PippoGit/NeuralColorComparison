global settings;

%% Setup global configuration
addpath(genpath('optprop'));
addpath('util');
addpath('data');
addpath('brain');

settings = nccInitPreferences();

%% Extract raw data from .mat file
[mSpectra, ~, settings.dsSize, settings.samples] = loadRawData();
mColors = colorsFromSpectra(mSpectra);  

%% Generate Training Set
ds = generateDataSet(mSpectra);
[input, target] = getTrainingSetFromDataSet(ds);
nccNetwork = nccNet(input, target);

%% Visualize Output
plotColorsMatrix(mColors);