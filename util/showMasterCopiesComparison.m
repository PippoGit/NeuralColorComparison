function showMasterCopiesComparison(dataset, index)
%SHOWMASTERCOPIESCOMPARISON Summary of this function goes here
%   Detailed explanation goes here
    global settings;
    
    figure('Name', 'Master-Copy Comparison', 'NumberTitle', 'off');
    hold on
    
    rectangle('Pos',[0 0 1 1] ,'FaceColor', dataset(index).mColor.rgb)
    
    for idx=1:settings.nCopies
       rectangle('Pos',[idx 0 1 1] ,'FaceColor', dataset(index+(idx-1)*settings.dsSize).cColor.rgb, 'LineStyle', 'none')
    end
    
    hold off
end

