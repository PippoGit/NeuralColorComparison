<p align="center">
![NeuralColourComparison](https://i.imgur.com/ntpcSSt.png)
</p>

## Introduction
A neural network based system that compares a master color spectrum to a copy spectrum in order to measure how similar they are. The system is composed by a Function Fitting Neural Network capable to reproduce the behaviour of the Colour Difference Function applied to the LAB coordinates (**CIE DE 76**). To get over the limit of the standard function (problems with yellowish colours, darker colours, unsaturated colours and blue-violet area of the HUE) it has been added a **Mamdani Fuzzy Inference System** that produces an adjusted value for the difference value.

## Test It
To test the whole system you can simply execute the **main.m** script. The main script will perform:
* Generation of the copies: 10 copies for each master;
* Feature Extraction: statistical mean on spectra (1 every 50 samples):
* Feature Selection: selection of the top 4 features using the function sequentialfs;
* Fuzzification using the nccMamdani.fis Fuzzy Inference System:
* Training of the network and results.

You can change pretty much all of the parameters through the configuration global struct `settings` (defined in **nccPreferences.m**).

## Documentation
Do you want to know more about the system? Then you should definitely take a look at the <a href="#”>full documentation</a>! 
