settings = nccSetup();

%% Extract dataset
[mSpectra, ~, settings.dsSize, settings.samples] = extractDataset();
mColors = colorsFromSpectra(mSpectra);  

%% Generate Training Set
cSpectra = generateCopies(mSpectra);
ts = prepareTrainingSet(mSpectra, cSpectra);

%% Visualize Output
plotColorsMatrix(mColors);
plotColorsMatrix(cColors);