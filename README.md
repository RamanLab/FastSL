# FastSL
Algorithm to identify synthetic lethal sets using genome-scale metabolic models
To perform synthetic lethality analysis using Fast-SL the following tools are needed:



1. COBRA Toolbox

2. Gurobi Solver v5.6.2 or higher (GLPK works fine too).

Fast-SL description is available at : http://arxiv.org/abs/1406.6557



__________________________________________________________________________

Description of Available files:



Models/

'Eco_iAF1260.mat' :: SBML model of *Escherichia coli* - *i*AF1260 used for analysis 

'eliList_eco_iAF1260.mat' :: List of reactions elimated for lethality analysis- Exchange, ATPM etc



'Mtu_iNJ661.mat' :: SBML model of *Mycobacterium Tuberculosis* used for analysis 

'eliList_mtu_iNJ661.mat' :: List of reactions elimated for lethality analysis



'STM_v1.0.mat' :: SBML model of *Salmonella* Typhimurium used for analysis 

'eliList_sty_STM_v1.0.mat' :: List of reactions elimated for lethality analysis





Sample Results/

Reaction and Gene lethals for the models used

__________________________________________________________________________







>>help fastSL

fastSL(model,cutoff,order,eliList,atpm) 

  

  INPUT

  model (the following fields are required - others can be supplied)       

    S            Stoichiometric matrix

    b            Right hand side = dx/dt

    c            Objective coefficients

    lb           Lower bounds

    ub           Upper bounds

    rxns         Reaction Names

  OPTIONAL

  cutoff         cutoff percentage value for lethality.Default is 0.01.

  order          Order of SLs required.Default order is 2. Max value 3.

  eliList        List of reactions to be ignored for lethality

  analysis:Exchange Reactions, ATPM etc.

  atpm           ATPM Reaction Id in model.rxns if other than 'ATPM'

  OUTPUT

  A 'modelname_Rxn_Lethals.mat' file containing all the lethal reaction sets of the order specified



>>example_fastSL

>>example_fastSLgenes







