global settings;

%% Setup global configuration
addpath(genpath('optprop'));
addpath('util');
addpath('data');
addpath('brain');

settings = nccInitPreferences();

%% Import dataset and feature extraction
ds = importDataset();

netTarget = [ds.de]';
netInput = extractFeaturesFromDataset(ds);
%nccNetwork = nccNet(netInput, netTarget);

[fs,hst] = sequentialfs(@nccNet, netInput, netTarget, 'cv', 'none', 'nfeatures', 5);

%% TODO: Feature selection 
