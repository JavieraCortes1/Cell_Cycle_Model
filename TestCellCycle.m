% Cell cycle model 11-ODE
arInit;
arLoadModel('ModelTest_new'); 
arLoadData('condG1S');
arLoadData('conditionPalbo');
arLoadData('conditionPalbo2');
% arLoadData('conditionNoco');
% arLoadData('conditionNoco2');

% Compile the model 
arCompileAll; 

ar.config.maxsteps=10000;
ar.config.rtol = 10e-10;
ar.config.atol = 10e-10;

% Fit the model
arFit
arPlot
pars=ar.p'; 

% arFitLHS(20)
