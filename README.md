# FastSL

> Efficient discovery of synthetic lethal gene and reaction sets in genome-scale metabolic models.

[![Paper DOI](https://img.shields.io/badge/Bioinformatics-10.1093%2Fbioinformatics%2Fbtv352-2ea44f)](https://academic.oup.com/bioinformatics/article/31/20/3299/195638/Fast-SL-an-efficient-algorithm-to-identify)

Fast-SL is a parallelized workflow for identifying synthetic lethal (SL) relationships in metabolic networks. It accompanies the publication below and provides MATLAB scripts and sample data to reproduce the reported experiments and to adapt the pipeline to new genome-scale models.

- ⚡ **High-throughput enumeration** of single, double, and triple synthetic lethal sets.
- 🤝 **Parallel MATLAB implementation** that accelerates the COBRA Toolbox-based workflow.
- 📄 **Reproducible reference implementation** for the Bioinformatics 2015 Fast-SL paper.

## Table of contents
1. [Getting started](#getting-started)
2. [Quick start](#quick-start)
3. [Repository structure](#repository-structure)
4. [Reproducibility resources](#reproducibility-resources)
5. [Citing Fast-SL](#citing-fast-sl)
6. [Maintainers & contact](#maintainers--contact)
7. [Acknowledgements](#acknowledgements)
8. [License](#license)

## Getting started

### Prerequisites
Fast-SL depends on the COBRA Toolbox ecosystem for MATLAB.

- MATLAB R2013b or newer
- [COBRA Toolbox](http://opencobra.github.io/cobratoolbox/)
- A linear programming (LP) solver supported by COBRA (e.g., [Gurobi](http://www.gurobi.com/), [GLPK](https://www.gnu.org/software/glpk/)).
- For the parallel Fast-SL implementation: IBM CPLEX v12.0 or later (available free for academics via the [IBM Academic Initiative](https://ibm.onthehub.com/WebStore/ProductSearchOfferingList.aspx?srch=cplex)). Serial execution works with any COBRA-compatible solver.

### Installation
1. Clone or download this repository into your MATLAB path.
2. Install and initialize the COBRA Toolbox following the [official instructions](https://opencobra.github.io/cobratoolbox/stable/).
3. Ensure your chosen LP solver is installed, licensed, and configured in MATLAB via `changeCobraSolver`.
4. Add the Fast-SL directories to the MATLAB path (e.g., `addpath(genpath('FastSL'))`).

## Quick start

Once prerequisites are satisfied, launch MATLAB and run the helper scripts provided with the repository:

```matlab
% Load the sample E. coli model and compute synthetic lethal reactions
addpath(genpath('FastSL'));
example_fastSL;

% Compute gene-level lethals for the same model
example_fastSLgenes;
```

To call the core routine directly, inspect the MATLAB documentation:

```matlab
help fastSL
```

Key arguments of `fastSL` include the stoichiometric model structure (`S`, `lb`, `ub`, `c`, `b`, `rxns`) plus optional parameters for lethality cutoff, interaction order (up to 3), reaction exclusion lists, and ATP maintenance reaction identifiers.

## Repository structure

| Path | Description |
| ---- | ----------- |
| `Models/` | Genome-scale models (MAT files) for *E. coli* (iAF1260), *Mycobacterium tuberculosis* (iNJ661), and *Salmonella enterica* (STM v1.0), plus corresponding reaction exclusion lists (`eliList_*.mat`). |
| `Parallel FastSL/` | Parallelized MATLAB scripts leveraging CPLEX for accelerated synthetic lethality enumeration. |
| `Genes/` | Example results and helper scripts for gene-level synthetic lethal analysis. |
| `Rxns/` | Reaction-level lethality outputs mirroring the published experiments. |
| `Sample Results/` | Pre-computed synthetic lethal sets for the bundled models, useful for verifying your environment. |
| `README.md` | Project overview (this document).

## Reproducibility resources

- Run `example_fastSL` and `example_fastSLgenes` to reproduce the main tables from the paper for the bundled models.
- Compare your generated `.mat` result files with the contents of `Sample Results/` to confirm consistent solver configuration.
- The `Parallel FastSL/` directory contains scripts configured for multi-core execution using CPLEX. Adjust solver options and parallel pool settings within MATLAB to match your hardware.

## Citing Fast-SL

If you use this repository in academic work, please cite:

> Aditya Pratapa, Shankar Balachandran, and Karthik Raman. “Fast-SL: An efficient algorithm to identify synthetic lethal sets in metabolic networks.” *Bioinformatics* 31.20 (2015): 3299–3305. [https://doi.org/10.1093/bioinformatics/btv352](https://doi.org/10.1093/bioinformatics/btv352)

```bibtex
@article{pratapa2015fastsl,
  title   = {Fast-SL: An efficient algorithm to identify synthetic lethal sets in metabolic networks},
  author  = {Pratapa, Aditya and Balachandran, Shankar and Raman, Karthik},
  journal = {Bioinformatics},
  volume  = {31},
  number  = {20},
  pages   = {3299--3305},
  year    = {2015},
  doi     = {10.1093/bioinformatics/btv352}
}
```

## Maintainers & contact

Fast-SL is maintained by members of the [RBCDSAI Lab, IIT Madras](https://rbcdsai.iitm.ac.in/). For questions or contributions, please open an issue or email the corresponding authors listed in the publication.

## Acknowledgements

Fast-SL development was supported by:

- High Performance Computing Environment, P G Senapathy Centre for Computing Resources, IIT Madras.
- Grant BT/PR4949/BRB/10/1048/2012 from the [Department of Biotechnology, Government of India](https://www.dbtindia.nic.in/).
- [Initiative for Biological Systems Engineering (IBSE)](https://ibse.iitm.ac.in/).
- [Robert Bosch Centre for Data Science and Artificial Intelligence (RBCDSAI)](https://rbcdsai.iitm.ac.in/).

![IBSE logo](https://github.com/RBC-DSAI-IITM/rbc-dsai-iitm.github.io/blob/master/images/IBSE_logo.png)
![RBCDSAI logo](https://github.com/RBC-DSAI-IITM/rbc-dsai-iitm.github.io/blob/master/images/logo.jpg)

## License

This repository follows the license terms stated in the original distribution. Please consult the authors if you require clarification for reuse or redistribution.
