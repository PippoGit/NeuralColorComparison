function plotSpectrum(master,copy)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    figure('Name', 'Master-Copy Comparison', 'NumberTitle', 'off');
    hold on
    plot(master)
    plot(copy)
    legend('Master', 'Copy')
    hold off  
end

