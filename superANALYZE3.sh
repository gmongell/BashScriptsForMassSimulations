X=Et
C=80
echo "$X"
echo "$C%"
#Core Folder
Fold=/fs/lustre/cwr0408/1.29.2014/
echo "$Fold"
#load the gromacs modules
module load gromacs/4.6.3

#looping through the PE and PP systems
for i in PE4 PE5 PE6 PE8 PE10 PE12 PE14 PE18 PE24 PP6 PP9 PP12 PP15 PP18 PIB12 PIB24 PIB36
do 
cd /fs/lustre/cwr0408/1.29.2014/
#a place to put all of the derived outputs
mkdir ./outputs
cd /fs/lustre/cwr0408/1.29.2014/$i
#need to correct PE4 to have 3 pbs scripts
echo -e "0\n1000\n9000\n" | trjcat -settime -f firstmd.trr secondmd.trr thirdmd.trr -o md_concat.trr
done


for i in PE4 PE5 PE6 PE8 PE10 PE12 PE14 PE18 PE24 PP6 PP9 PP12 PP15 PP18 PIB12 PIB24 PIB36
do 
cd /fs/lustre/cwr0408/1.29.2014/
#a place to put all of the derived outputs
mkdir ./outputs
cd /fs/lustre/cwr0408/1.29.2014/$i
#need to correct PE4 to have 3 pbs scripts
echo 0 | trjconv -f md_concat.trr -s $X\OHMix$C\_$i\_EM.gro -o md_out.gro
done


for i in PE4 PE5 PE6 PE8 PE10 PE12 PE14 PE18 PE24 PP6 PP9 PP12 PP15 PP18 PIB12 PIB24 PIB36
do 
cd /fs/lustre/cwr0408/1.29.2014/$i
echo -e "6\n1" | g_rdf -f md_concat.trr -s md1.tpr -o $X\OHMix$C\_$i\_rdf_HOH.xvg -com
echo -e "6\n5" | g_rdf -f md_concat.trr -s md1.tpr -o $X\OHMix$C\_$i\_rdf_$COH.xvg -com
done

for i in PE4 PE5 PE6 PE8 PE10 PE12 PE14 PE18 PE24 PP6 PP9 PP12 PP15 PP18 PIB12 PIB24 PIB36
do 
cd /fs/lustre/cwr0408/1.29.2014/$i
echo -e "1" | g_density -f md_concat.trr -s md1.tpr -o $X\OH$C\_$i\_density_$i\.xvg -dens mass -symm -d Z
echo -e "6" | g_density -f md_concat.trr -s md1.tpr -o $X\OH$C\_$i\_density_$C\OH.xvg -dens mass -symm -d Z
echo -e "5" | g_density -f md_concat.trr -s md1.tpr -o $X\OH$C\_$i\_density_HOH.xvg -dens mass -symm -d Z
echo -e "0" | g_density -f md_concat.trr -s md1.tpr -o $X\OH$C\_$i\_density_Sys.xvg -dens mass -symm -d Z
done


for i in PE4 PE5 PE6 PE8 PE10 PE12 PE14 PE18 PE24 PP6 PP9 PP12 PP15 PP18
do 
cd /fs/lustre/cwr0408/1.29.2014/$i
echo $i | ./AnalyzeGro4
cp /fs/lustre/cwr0408/1.29.2014/$i/r_concat.dat /fs/lustre/cwr0408/1.29.2014/outputs/r_concat_$i\.dat
done

for i in PIB12 PIB24 PIB36
do 
cd /fs/lustre/cwr0408/1.29.2014/$i
j=PIB
echo $j | ./AnalyzeGro4
cp /fs/lustre/cwr0408/1.29.2014/$i/r_concat.dat /fs/lustre/cwr0408/1.29.2014/outputs/r_concat_\$i.dat
done

for i in PE4 PE5 PE6 PE8 PE10 PE12 PE14 PE18 PE24 PP6 PP9 PP12 PP15 PP18 PIB12 PIB24 PIB36
do 
cd /fs/lustre/cwr0408/8.8.2013/$i
cp /fs/lustre/cwr0408/8.8.2013/$i/r_concat.dat /fs/lustre/cwr0408/8.8.2013/outputs/r_concat_$i\.dat
done

for i in PE4 PE5 PE6 PE8 PE10 PE12 PE14 PE18 PE24 PP6 PP9 PP12 PP15 PP18 PIB12 PIB24 PIB36
do 
cd /fs/lustre/cwr0408/8.26.2013/$i
cp /fs/lustre/cwr0408/8.26.2013/$i/r_concat.dat /fs/lustre/cwr0408/8.26.2013/outputs/r_concat_$i\.dat
done

for i in PE4 PE5 PE6 PE8 PE10 PE12 PE14 PE18 PE24 PP6 PP9 PP12 PP15 PP18 PIB12 PIB24 PIB36
do 
cd /fs/lustre/cwr0408/9.2.2013/$i
cp /fs/lustre/cwr0408/9.2.2013/$i/r_concat.dat /fs/lustre/cwr0408/9.2.2013/outputs/r_concat_$i\.dat
done

for i in PE4 PE5 PE6 PE8 PE10 PE12 PE14 PE18 PE24 PP6 PP9 PP12 PP15 PP18 PIB12 PIB24 PIB36
do 
cd /fs/lustre/cwr0408/9.3.2013/$i
cp /fs/lustre/cwr0408/9.3.2013/$i/r_concat.dat /fs/lustre/cwr0408/9.3.2013/outputs/r_concat_$i\.dat
done

for i in PE4 PE5 PE6 PE8 PE10 PE12 PE14 PE18 PE24 PP6 PP9 PP12 PP15 PP18 PIB12 PIB24 PIB36
do 
cd /fs/lustre/cwr0408/9.5.2013/$i
cp /fs/lustre/cwr0408/9.5.2013/$i/r_concat.dat /fs/lustre/cwr0408/9.5.2013/outputs/r_concat_$i\.dat
done

for i in PE4 PE5 PE6 PE8 PE10 PE12 PE14 PE18 PE24 PP6 PP9 PP12 PP15 PP18 PIB12 PIB24 PIB36
do 
cd /fs/lustre/cwr0408/9.9.2013/$i
cp /fs/lustre/cwr0408/9.9.2013/$i/r_concat.dat /fs/lustre/cwr0408/9.9.2013/outputs/r_concat_$i\.dat
done

for i in PE4 PE5 PE6 PE8 PE10 PE12 PE14 PE18 PE24 PP6 PP9 PP12 PP15 PP18 PIB12 PIB24 PIB36
do 
cd /fs/lustre/cwr0408/1.3.2014/$i
cp /fs/lustre/cwr0408/1.3.2014/$i/r_concat.dat /fs/lustre/cwr0408/1.3.2014/outputs/r_concat_$i\.dat
done

X=Et
C=80
for i in PE4 PE5 PE6 PE8 PE10 PE12 PE14 PE18 PE24 PP6 PP9 PP12 PP15 PP18 PIB12 PIB24 PIB36
do 
cd /fs/lustre/cwr0408/1.29.2014/$i
cp /fs/lustre/cwr0408/1.29.2014/$i/r_concat.dat /fs/lustre/cwr0408/1.29.2014/outputs/$X\OH$C\_r_concat_$i\.dat
done

X=Et
C=80
for i in PE4 PE5 PE6 PE8 PE10 PE12 PE14 PE18 PE24 PP6 PP9 PP12 PP15 PP18 PIB12 PIB24 PIB36
do 
cd /fs/lustre/cwr0408/1.29.2014/$i
mv /r_concat_$i\.dat /$X\OH$C\_r_concat_$i\.dat
cd /fs/lustre/cwr0408/1.29.2014/outputs
mv /r_concat_$i\.dat /$X\OH$C\_r_concat_$i\.dat
done