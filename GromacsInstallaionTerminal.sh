#!/bin/bash
#this command does not work even when the g_energy commands
#and the core engine are functioning
luck 
grompp 
#this is where the non-engine commands are stored
cd $Home/Downloads
#to display a list of available updates type
#yum list updates
#to update packages
yum update
#installing the gromacs packages available in the software center
sudo yum install avogadro-1.0.3-16.fc19 avogadro-libs-1.0.3-16.fc19 
sudo yum install fftw2-2.1.5-25.fc19 fftw-doc-3.3.3-5.fc19 
sudo yum install gromacs-4.6.3-1.fc19 gromacs-bash-4.6.3-1.fc19 gromacs-common-4.6.3-1.fc19 gromacs-csh-4.6.3-1.fc19 gromacs-devel-4.6.c-1.fc19 gromacs-libs-4.6.3-1.fc19 gromacs-mpich2-4.6.3-1.fc19 gromacs-mpich2-devel-4.6.3-1.fc19 gromacs-mpich2-libs-4.6.3-1.fc19 gromacs-ngmx-4.6.3-1.fc19 gromacs-openmpi-4.6.3-1.fc19 gromacs-openmpi-devel-4.6.3-1.fc19 gromacs-openmpi-libs-4.6.3-1.fc19 gromacs-zdh-4.6.3-1.fc19 xdrfile-1.1.1-4.fc19
sudo yum install catkin-0.4.5-7.gitd4f1f24.fc19 cmake-2.8.11-1.fc19 cmake-fedora-1.0.5-2.fc19 cmake-gui-2.8.11-1.fc19 
#testing g_energy [expected pass]
g_energy
#testing grompp and mdrun [expected fail]
grompp
mdrun
#download the gromacs package from the site
wget ftp://ftp.gromacs.org/pub/gromacs/gromacs-4.6.2.tar.gz
tar -xfz gromacs-4.6.3.tar.gz
cd gromacs-4.6.3
#mkdir build
#cd build
#cmake .. -DGMX_BUILD_OWN_FFTW=ON
#make
#sudo make install
cd ./Documents/gromacs-4.6.3/ 
#without sudo in the second of these two lines a folder is not created
#can use make -j N where N is the number of cores or threads to speed up make
sudo cmake ../gromacs-4.6.3/ 
sudo make 
#this line should by modified for multiprocessor installations 
sudo make install-mdrun 
make mdrun 
make &> log 
sudo make install 
make install-mdrun 
sudo make install-mdrun 

#The linking of the library commands and bin which we created
#after installation are not present in this file