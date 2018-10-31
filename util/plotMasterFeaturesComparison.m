function plotMasterFeaturesComparison(master, features)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    global settings;
    
    figure('Name', 'Master-Features Comparison', 'NumberTitle', 'off');
    hold on
    plot(master)
    stem(1:settings.compressionRate:settings.samples, features, 'LineStyle', 'none')
    legend('Master', 'Mean')
    hold off
end

