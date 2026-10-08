# Batch molecular-dynamics workflows for PBS clusters

A historical collection of shell/PBS scripts for preparing, submitting, continuing, and analyzing GROMACS simulations of polymers in mixed solvents. Several files are planning drafts rather than executable workflows.

## Functions and engineering applications

| Files | Observed purpose | Inferred use |
|---|---|---|
| `1_pregrompp.pbs`, `2_mixing.pbs`, `3_mdgrompp.pbs` | Preparation/mixing/preprocessing stages, with incomplete preparation logic | Organizing composition and polymer-size studies [1,2] |
| `md.pbs`, `md2.pbs`, `secondmd.pbs`, `thirdmd.pbs` | PBS resource requests and MPI molecular-dynamics runs | Long-running simulation campaigns |
| `sequentialMDRuns.sh`, `sequentialMDRuns2.sh`, `sequentialMDAll2A.sh` | Sequential job/continuation workflows | Chaining production segments with scheduler adaptation |
| `RDF_MSDComputations.pbs`, `DensityComputations.pbs`, `GEnergyComputations.pbs`, `AnalyzeGroALL.pbs` | Analysis wrappers; the inspected RDF/MSD-named file actually invokes RDF commands | Solvation, density, energetics, and interface comparisons [1,2] |
| `CreatingBackupTARFiles.pbs`, `copying*.pbs`, `FindAndReplace*.sh` | Archiving, staging, and template editing | Managing reproducible simulation inputs and outputs |
| `Lumerical_8.pbs` | Separate Lumerical batch-job template | Historical optical-simulation scheduling, not a GROMACS analysis step |

## Example calls

Requires Bash, a PBS-compatible scheduler, site-specific modules/MPI, and the GROMACS/input versions expected by each script. PACKMOL is relevant to preparation [3], but its input structures are not bundled as a complete runnable system.

```bash
# Syntax checks do not submit jobs or run simulations.
bash -n md.pbs
bash -n RDF_MSDComputations.pbs
```

After editing the PBS resources, paths, module names, output destinations, and input filenames for your cluster, a single-job submission follows this interface:

```bash
qsub md.pbs
```

This is a scheduler invocation example, not confirmation that the unmodified template runs on your cluster. Review the selected file before submission. Use individual jobs before enabling the mass-submission scripts.

## Known limitations and validation

`1_pregrompp.pbs` contains unfinished constructs such as `if k=1, s=` and malformed loop headers. It must be completed before use. Other scripts embed historical user paths, email directives, and module versions. Source filenames alone do not establish capability: inspect actual commands and expected outputs. Backup/copy/replacement scripts modify files in place and must be adapted to a working copy. Expected artifacts depend on the job: trajectories (`.trr`), energies (`.edr`), logs, structures, or analysis (`.xvg`/`.dat`). No scheduler jobs were submitted during this documentation review. Validate one small complete case and checkpoint continuation before expanding a sweep.

## Review scope and software citation

Documentation reviewed on 2026-10-08 against source commit [`13f8fddb8699`](https://github.com/gmongell/BashScriptsForMassSimulations/tree/13f8fddb8699dccba8bd5f545d6c4361dc01180c). “Observed” means supported by source inspection; engineering applications are reasoned possibilities unless explicitly demonstrated. Scholarly references provide methodological context and do not certify these implementations. Runtime validation is stated separately above.

For software attribution, cite Guy Francis Mongelli, *BashScriptsForMassSimulations*, the [repository](https://github.com/gmongell/BashScriptsForMassSimulations), the exact commit used, and your access date. Also cite the relevant method publications and any original third-party contributors. No unverified software DOI or release version is assigned by this documentation.

## Scholarly references

1. “The surface activity of polymers in cosolvated systems determined from computational simulation.” *Polymer* (2016). [DOI: 10.1016/j.polymer.2015.11.003](https://doi.org/10.1016/j.polymer.2015.11.003). Related polymer/cosolvent surface-activity research. The publisher indexes the journal publication as 2016; the DOI contains 2015. Exact reproduction requires the original inputs and analysis conventions.

2. M. J. Abraham et al. (2015). “GROMACS: High performance molecular simulations through multi-level parallelism from laptops to supercomputers.” *SoftwareX* 1–2, 19–25. [DOI: 10.1016/j.softx.2015.06.001](https://doi.org/10.1016/j.softx.2015.06.001). Background for the simulation and analysis ecosystem; this does not establish compatibility with the legacy scripts.

3. L. Martínez, R. Andrade, E. G. Birgin, and J. M. Martínez (2009). “PACKMOL: A package for building initial configurations for molecular dynamics simulations.” *Journal of Computational Chemistry* 30, 2157–2164. [DOI: 10.1002/jcc.21224](https://doi.org/10.1002/jcc.21224). Supports molecular packing and initialization workflows.

## Ownership and existing license notices

Copyright (c) 2025 Guy Francis Mongelli

The existing project notice declares Apache License 2.0 for project code. Preserve all file-level and third-party notices. This README update does not change ownership or licensing terms.
