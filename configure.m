function s = configure()
%SETTINGS Summary of this function goes here
%   Detailed explanation goes here

    global settings;

    settings.wlrange = 380:1:800;
    settings.dsSize = 0;
    settings.samples = 0;

    settings.rmin = 1;
    settings.rmax = 1.13;
    settings.rseed = 1;

    s = settings;
end

