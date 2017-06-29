%%This is an Example to show how to use Fast-SL
load Ecoli_core_model
eliList=model.rxns(find(findExcRxns(model))); %Eliminate Exhange reactions for lethlaity analysis

%cutoff- 1% of Wildtype growth rate
%Lethals upto Order 2
%Output is stored in 'ecoli_core_model_Rxn_lethals.mat'
fastSL(model,0.01,2,eliList); 