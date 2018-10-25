function s = nccSetup()
%NCCSETUP Initialize the configuration for the system
%   Define a global variable 'settings' that contains information about
%   dataset, gaussian noise and more...

    global settings;
    
    %% Dataset parameters
    settings.wlRange = 380:1:800;
    settings.dsSize = 0;
    settings.samples = 0;

    %% Gaussian Noise parameters
    settings.nMin = 1;
    settings.nMax = 1.13;
    settings.nSeed = 1;

    %% Return a copy of the settings
    s = settings;
end