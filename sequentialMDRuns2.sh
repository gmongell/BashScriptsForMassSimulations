#!/bin/sh

#The purpose of this script is to submit a single script to
#the OSC which will submit a job and wait for the job (qsub)
#to complete before grompping the outputs and submitting the
#next job

#https://docs.loni.org/wiki/PBS_Job_Chains_and_Dependencies
#module load gromacs-4.5.5

#The grompp and qsub are paired, there each pbs script is pre-written
#to transfer the *.tpr file to the working directory and then execute
#the mdrun, then copy the files back

PP24EM=$(qsub -N em em.pbs)
echo $PP24EM
PP24MD1=$(qsub -W depend=afterok:$EM -N md1 firstmd.pbs)
echo $PP24MD1
PP24MD2=$(qsub -W depend=afterok:$MD1 -N md2 secondmd.pbs)
echo $PP24MD2
PP24MD3=$(qsub -W depend=afterok:$MD2 -N md3 thirdmd.pbs)
echo $PP24MD3

#...continue until the required simulation can be performed 

#concatenated trajectories code placed in the last pbs script (in this case thirdmd.pbs)
#trjcat -settime yes -f EtOHMix50_PP18C_md1.trr EtOHMix50_PP18C_md2.trr EtOHMix50_PP18C_md3.trr -o md_concat.trr

#this assumes that you know certainly that the job is completeable within the walltime limit.
#another possible solution that does not utilize the wait command is to call the next pbs script
#which performs a grompp and qsub at the end of the present pbs script