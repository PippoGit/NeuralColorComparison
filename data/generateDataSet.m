function [set] = generateDataSet(master)
    global settings;
       
    N = settings.ncopies * settings.dsSize;
    z = zeros(settings.samples, 1);
    set = repmat(struct('master', z, 'copy', z, 'de', 0), N, 1);  
    copies = generateCopies(master);
    
    for i=1:settings.ncopies
        copy = copies(i).spectra;
        colors = [colorsFromSpectra(master) colorsFromSpectra(copy)];

        for idx=1:settings.dsSize
            index = (i-1)*(settings.dsSize)+idx;
            set(index).master = master(idx, :);
            set(index).copy = copy(idx, :);
            
            set(index).de = de(colors(idx, 1).lab, colors(idx, 2).lab);
        end
    end
end

