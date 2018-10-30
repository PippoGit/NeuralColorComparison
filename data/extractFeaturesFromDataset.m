function input = extractFeaturesFromDataset(set)
    global settings;

    N = (settings.nCopies * settings.dsSize);
    input = zeros(N, 2*settings.samples);
    
    for idx=1:N
        m = set(idx).master;
        c = set(idx).copy;
        
        m_compressed = accumarray(ceil((1:numel(m))/settings.compressionRate)',m(:),[],@mean)';
        c_compressed = accumarray(ceil((1:numel(c))/settings.compressionRate)',c(:),[],@mean)';
        
        input(idx, 1:size(m_compressed, 2)+size(c_compressed,2)) = [m_compressed c_compressed];
    end
    input( :, ~any(input,1) ) = [];  % remove zero columns
end

