function [set] = prepareTrainingSet(master, copy)
    global settings;
    
    N = floor(settings.dsSize/10);
    z = zeros(421, 1);
    set = repmat(struct('master', z, 'copy', z, 'de', 0), N, 1);    
    
    for idx=1:N
        set(idx).master = master(:, idx);
        set(idx).copy = copy(:, idx);
    end
    [set.de] = deal(de(master, copy));
    
end

