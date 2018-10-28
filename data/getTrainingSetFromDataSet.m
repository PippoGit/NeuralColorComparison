function [input, target] = getTrainingSetFromDataSet(set)
    global settings;
    N = (settings.ncopies * settings.dsSize);
    input = zeros(N, 2*settings.samples);
    target = zeros(N,1);
    
    for idx=1:N
        m = set(idx).master;
        c = set(idx).copy;
        
        m_compressed = accumarray(ceil((1:numel(m))/5)',m(:),[],@mean)';
        c_compressed = accumarray(ceil((1:numel(c))/5)',c(:),[],@mean)';
        
        input(idx, 1:size(m_compressed, 2)+size(c_compressed,2)) = [m_compressed c_compressed];
        target(idx, 1) = set(idx).de;
    end
    input( :, ~any(input,1) ) = [];  % remove zero columns
end

