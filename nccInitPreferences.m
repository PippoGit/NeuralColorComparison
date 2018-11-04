function s = nccInitPreferences()
%NCCINITPREFERENCES Initialize the configuration for the system
%   Define a global variable 'settings' that contains information about
%   dataset, gaussian noise and more...
%   It also initializes the preferences for OPTPROP.

    global settings;
    
    %% OPTPROP Preference
    optsetpref('cwf','D65/2');
    optsetpref('WorkingRGB', 'srgb');
    
    %% Dataset parameters
    settings.wlRange = 380:1:800;
    settings.dsSize  = 0; % set by importDataset
    settings.samples = 0; % set by importDataset

    %% Gaussian Noise parameters
    settings.nCopies = 10;
    settings.nMin    = 1.015; % 1.0075
    settings.nMax    = 1.135;
    settings.nSeed   = 1;

    %% Neural Network and Features
    settings.compressionRate = 50;
    settings.numFeatures     = 4;
    
    settings.hiddenNeurons   = 5;
    settings.trainRatio      = 60/100;
    settings.valRatio        = 20/100;
    settings.testRatio       = 20/100;
    
    %% Return a copy of the settings
    s = settings;
end