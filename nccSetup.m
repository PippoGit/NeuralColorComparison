function s = nccSetup()
%NCCSETUP Initialize the configuration for the system
%   Define a global variable 'settings' that contains information about
%   dataset, gaussian noise and more...

    global settings;
    
    %% Dataset parameters
    settings.wlrange = 380:1:800;
    settings.dsSize = 0;
    settings.samples = 0;

    %% Gaussian Noise parameters
    settings.rmin = 1;
    settings.rmax = 1.13;
    settings.rseed = 1;

    %% Return a copy of the settings
    s = settings;
end