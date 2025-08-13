#!/bin/sh

#The purpose of this script is to submit a single script to
#the OSC which will submit a job and wait for the job (qsub)
#to complete before grompping the outputs and submitting the
#next job

module load gromacs-4.5.5

#The grompp and qsub are paired, there each pbs script is pre-written
#to transfer the *.tpr file to the working directory and then execute
#the mdrun, then copy the files back
grompp -f em.mdp -c EtOHMix50_PP18C.gro -p PP18C.top -o em.tpr
qsub -N em em.pbs
wait em

grompp -f md.mdp -c EtOHMix50_PP18C_em.gro -p PP18C.top -o md1.tpr
qsub -N md1 firstmd.pbs
wait md1

grompp -f md.mdp -c EtOHMix50_PP18C_md1.gro -p PP18C.top -o md2.tpr
qsub -N md2 secondmd.pbs
 
wait md2
grompp -f md.mdp -c EtOHMix50_PP18C_md2.gro -p PP18C.top -o md3.tpr
qsub -N md3 thirdmd.pbs
wait md3

#...continue until the required simulation can be performed 

#concatenated trajectories
trjcat -settime yes -f EtOHMix50_PP18C_md1.trr EtOHMix50_PP18C_md2.trr EtOHMix50_PP18C_md3.trr -o md_concat.trr

#this assumes that you know certainly that the job is completeable within the walltime limit.
#another possible solution that does not utilize the wait command is to call the next pbs script
#which performs a grompp and qsub at the end of the present pbs script