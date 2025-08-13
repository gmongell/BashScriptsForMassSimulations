#PBS -S /bin/bash

qsub ./md_1n.pbs
qsub ./md_2n.pbs
qsub ./md_3n.pbs
qsub ./md_4n.pbs
qsub ./md_1n1gp.pbs
qsub ./md_1n2gp.pbs
qsub ./md_2n1gp.pbs
qsub ./md_2n2gp.pbs
qsub ./md_3n1gp.pbs
qsub ./md_3n2gp.pbs
qsub ./md_4n1gp.pbs
qsub ./md_4n2gp.pbs