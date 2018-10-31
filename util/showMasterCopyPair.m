function showMasterCopyPair(masterRgb, copyRgb)
%SHOWMASTERCOPYPAIR Summary of this function goes here
%   Detailed explanation goes here
    figure('Name', 'Master-Copy Comparison', 'NumberTitle', 'off');
    hold on
    rectangle('FaceColor', masterRgb, 'LineStyle', 'none')
    patch('FaceColor', copyRgb, 'LineStyle', 'none')
    hold off
end

