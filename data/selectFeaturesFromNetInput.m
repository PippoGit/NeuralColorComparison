function [features] = selectFeaturesFromNetInput(input, target)
%SELECTFEATURESFROMNETINPUT Summary of this function goes here
%   Detailed explanation goes here    
    global settings;
    featuresList = sequentialfs(@nccNet, input, target, 'cv', 'none', 'nfeatures', settings.numFeatures);    
    features = input(:, featuresList);
end

