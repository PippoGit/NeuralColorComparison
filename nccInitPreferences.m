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
    settings.dsSize = 0;
    settings.samples = 0;

    %% Gaussian Noise parameters
    settings.nCopies = 10;
    settings.nMin = 1.015; % 1.015 (Con 1.0075 rallento troppo il training per casi poco credibili di copie molto fedeli)
    settings.nMax = 1.135;
    settings.nSeed = 1;

    %% Compression rate
    settings.compressionRate = 5;
    
    %% Return a copy of the settings
    s = settings;
end