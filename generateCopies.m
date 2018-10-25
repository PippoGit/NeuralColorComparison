function [spectra, colors] = generateCopies(master)    
    spectra = master*random('unif', 1, 1.13);
    colors = colorsFromSpectra(spectra);
end

