function copies = generateCopies(master)
    global settings;  
    rng(settings.nSeed);

    copies = repmat(struct('spectra', zeros(settings.dsSize, settings.samples)), settings.ncopies, 1);  

    for idx=1:settings.ncopies
        copies(idx).spectra = master*unifrnd(settings.nMin, settings.nMax);
    end
end

