global settings;

%% Setup global configuration
addpath(genpath('optprop'));
addpath('util');
addpath('data');
addpath('brain');

settings = nccInitPreferences();

%% Import dataset and feature extraction
ds = importDataset();

netTarget   = [ds.de]';
netFeatures = extractFeaturesFromDataset(ds);
netInput    = selectFeaturesFromNetInput(netFeatures, netTarget);

%% Define and Train NN using the selected features
[~, nccNetwork] = nccNet(netInput, netTarget); 
