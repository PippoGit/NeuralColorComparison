global settings;
debug = struct('importDataset', 0, ...
                  'extractFts', 0, ...
                   'selectFts', 0, ...
                    'trainNet', 0);

%% Setup global configuration
addpath(genpath('optprop'));
addpath('util');
addpath('data');
addpath('brain');

settings = nccInitPreferences();

%% Import dataset and feature extraction
if debug.importDataset 
    ds = importDataset();
    netTarget   = [ds.de]';
end


if debug.extractFts  
    netFeatures = extractFeaturesFromDataset(ds);
end

if debug.selectFts
    netInput    = selectFeaturesFromNetInput(netFeatures, netTarget);
end

%% Define and Train NN using the selected features
if debug.trainNet
    [~, nccNetwork] = nccNet(netInput, netTarget); 
end
