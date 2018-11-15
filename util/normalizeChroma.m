function chromaNormalized = normalizeChroma(lch)
    global settings;

    lightness = lch(1);
    chroma = lch(2);
    maxC = settings.maxC * sqrt(1 - ((lightness-50)/50)^2);
    chromaNormalized = 100*chroma/maxC;
end

