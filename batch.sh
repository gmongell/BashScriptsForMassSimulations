#!/bin/bash

module load gromacs
cd /nfs/05/cwr0408/DoctoralResearch/5.22.2013/LacksSimulations001k
grompp -f md.mdp -c mdIn.pdb -p topol_sim.top -o md.tpr -maxwarn 10
qsub md.pbs

cd /nfs/05/cwr0408/DoctoralResearch/5.22.2013/LacksSimulations005k
grompp -f md.mdp -c mdIn.pdb -p topol_sim.top -o md.tpr -maxwarn 10
qsub md.pbs

cd /nfs/05/cwr0408/DoctoralResearch/5.22.2013/LacksSimulations010k
grompp -f md.mdp -c mdIn.pdb -p topol_sim.top -o md.tpr -maxwarn 10
qsub md.pbs

cd /nfs/05/cwr0408/DoctoralResearch/5.22.2013/LacksSimulations020k
grompp -f md.mdp -c mdIn.pdb -p topol_sim.top -o md.tpr -maxwarn 10
qsub md.pbs

cd /nfs/05/cwr0408/DoctoralResearch/5.22.2013/LacksSimulations100k
grompp -f md.mdp -c mdIn.pdb -p topol_sim.top -o md.tpr -maxwarn 10
qsub md.pbs

cd /nfs/05/cwr0408/DoctoralResearch/5.22.2013/LacksSimulations200k
grompp -f md.mdp -c mdIn.pdb -p topol_sim.top -o md.tpr -maxwarn 10
qsub md.pbs

cd /nfs/05/cwr0408/DoctoralResearch/5.22.2013/LacksSimulations1000k
grompp -f md.mdp -c mdIn.pdb -p topol_sim.top -o md.tpr -maxwarn 10
qsub md.pbs
