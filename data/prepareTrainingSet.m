function [set] = prepareTrainingSet(master)
    global settings;
    
    N = settings.ncopies * settings.dsSize;
    z = zeros(settings.samples, 1);
    set = repmat(struct('master', z, 'copy', z, 'de', 0), N, 1);    
    
    for i=1:settings.ncopies
        copy = generateCopies(master);
        diff = de(master, copy);
        
        for idx=1:settings.dsSize
            index = (i-1)*(settings.dsSize)+idx;
            set(index).master = master(idx, :);
            set(index).copy = copy(idx, :);
            set(index).de = diff(idx);
        end
    end
end

