function copies = generateCopies(master)
    global settings;  
    rng(settings.nSeed);

    copies = repmat(struct('spectra', zeros(settings.dsSize, settings.samples)), settings.nCopies, 1);  

    for idx=1:settings.nCopies
        for idy=1:settings.dsSize
            copies(idx).spectra(idy, :) = master(idy, :)*unifrnd(settings.nMin, settings.nMax);
            %copies(idx).spectra = master*unifrnd(settings.nMin, settings.nMax);
        end
    end
end

