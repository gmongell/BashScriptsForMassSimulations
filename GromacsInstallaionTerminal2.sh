cd /usr/local/bin 
cd ./Documents/ 
cd ./gromacs-4.6.3/ 
source /home/sabri/Documents/gromacs-4.6.3/src/kernel 
#checking to see if editconf is here [success]
g_editconf 
sudo ln -s ~/$HOME/sabri/Documents/gromacs-4.6.3/src/kernel /bin 
sudo PATH=$HOME/sabri/Documents/gromacs-4.6.3/src/kernel:$PATH 
PATH=$HOME/sabri/Documents/gromacs-4.6.3/src/kernel:$PATH 
#checked for grompp [success]
grompp
 #checking for mdrun [success]
mdrun 
