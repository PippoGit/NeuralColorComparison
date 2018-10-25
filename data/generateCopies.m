function spectra = generateCopies(master)
    global settings;
    
    rng(settings.nSeed);
    spectra = master*unifrnd(settings.nMin, settings.nMax);
end

