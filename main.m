global settings;
debug = struct('importDataset', 1, ...
                  'extractFts', 1, ...
                   'selectFts', 1, ...
                     'fuzzify', 1, ...
                    'trainNet', 1);

%% Setup global configuration
addpath(genpath('optprop'));
addpath('util');
addpath('data');
addpath('brain');

settings = nccInitPreferences();

%% Import dataset 
if debug.importDataset 
    ds = importDataset();
    netTarget = [ds.de]';
end

%% Fuzzy Logic Here
if debug.fuzzify 
    nccFuzzyInferenceSystem = nccFis();
    netTarget = evalfis(fuzzyInput(ds), nccFuzzyInferenceSystem);
end

%% Feature extraction and selection
if debug.extractFts  
    netFeatures = extractFeaturesFromDataset(ds);
end

if debug.selectFts
    tic;
    netInput = selectFeaturesFromNetInput(netFeatures, netTarget);
    toc;
elseif (debug.extractFts && ~debug.selectFts)
    netInput = netFeatures;
end

%% Define and Train NN using the selected features
if debug.trainNet
    [~, nccNetwork] = nccNet(netInput, netTarget); 
end


