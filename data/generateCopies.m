function spectra = generateCopies(master)
    global settings;
    
    rng(settings.rseed);
    spectra = master*unifrnd(settings.rmin, settings.rmax);
end

