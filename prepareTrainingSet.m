function [set] = prepareTrainingSet(master, copy)
    global settings;
    set = repmat(struct('master', zeros(421, 1), 'copy', zeros(421, 1), 'de', 0), floor(settings.dsSize/10), 1);    
    
    for idx=1:floor(settings.dsSize/10)
        set(idx).master = master(:, idx);
        set(idx).copy = copy(:, idx);
    end
    [set.de] = deal(de(master, copy));
    
end

