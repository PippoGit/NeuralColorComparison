function spectra = generateCopies(master)
    global settings;
    
    rng(settings.nseed);
    spectra = master*unifrnd(settings.nmin, settings.nmax);
end

