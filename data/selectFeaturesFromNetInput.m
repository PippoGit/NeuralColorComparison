function [features] = selectFeaturesFromNetInput(input, target)
%SELECTFEATURESFROMNETINPUT Summary of this function goes here
%   Detailed explanation goes here    
    [featuresList, ~] = sequentialfs(@nccNet, input, target, 'cv', 'none', 'nfeatures', 5);    
    features = input(:, featuresList);
end

