global settings;
debug = struct('importDataset', 1, ...
                  'extractFts', 1, ...
                   'selectFts', 1, ...
                    'trainNet', 1);

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
    tic;
    netInput = selectFeaturesFromNetInput(netFeatures, netTarget);
    toc;
else
    netInput = netFeatures;
end

%% Define and Train NN using the selected features
if debug.trainNet
    [~, nccNetwork] = nccNet(netInput, netTarget); 
end
