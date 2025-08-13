#!/bin/sh

PWD=$(pwd)
echo $PWD
#The above construct correctly passes the present directory into a variable.
#This will allow me to pass the directory into the sequentialMDrun2 script.
#Since I have been calling the script from it's directory this will be okay.
#I can theoretically have only one copy of this script and call it within
#each directory.  On top of that I can add a while read loop to do them all
#at once.

#declaring the folder and pbs script arrays

folders=(1.29.2014 1.3.2014 9.5.2013 9.3.2013 8.8.2013)
pbsscripts=(em.pbs firstmd.pbs secondmd.pbs thirdmd.pbs)

for i in $folders
do
for dir in /fs/lustre/cwr0408/$i/*/
do
cd ./$dir/
n=em.pbs
for m in $pbsscripts
do
p=${dir}${m}
${p}=$(qsub -v -W depend=afterok:${p} -N ${p} ./$m)
echo $p
n=${m}
done
done
done




for dir in /fs/lustre/cwr0418/*****/*/
do
cd ./$dir/
qsub -v ./*.pbs
done


folders=(1.29.2014 1.3.2014 9.5.2013 9.3.2013 8.8.2013)
pbsscripts=(em.pbs firstmd.pbs secondmd.pbs thirdmd.pbs)
for dir in /fs/lustre/cwr0408/1.29.2014/*/
do
cd $dir/
n=em.pbs
for m in $pbsscripts
do
p=${dir}${m}
${p}=$(qsub -v -W depend=afterok:${p} -N ${p} ./$m)
echo $p
n=${m}
done
done


#The problem is that the variables are not concatenating into a string
#for the qsub export and subsequent printing.


#dir=${dir%*/}
#echo ${dir##*/}


#Here's a bit of code simply for copying files

for i in 1.29.2014 1.3.2014 9.5.2013 9.3.2013 8.8.2013
do
for dir in /fs/lustre/cwr0408/$i/*/
do
dir=${dir%*/}
echo ${dir##*/}
cp -r /fs/lustre/cwr0408/1.29.2014/ethanol3.top /fs/lustre/cwr0408/$i/$dir/ethanol.top
done
done
done










#will this get held up by an empty dependency?
#This is not correct since the job depdendency does not need to be on itself but the job
$before it!

#The following lines were a test to ensure that the variables translate correctly
#All of the variables printed correctly.  Therefore once the sh script has been
#modified I will be good to go.
#for i in 1.29.2014 1.3.2014 9.5.2013 9.3.2013 8.8.2013
#do
#cd /fs/lustre/cwr0408/$i
#for dir in /fs/lustre/cwr0408/$i/*/
#do
#dir=${dir%*/}
#echo ${dir##*/}
#echo $dir
#PATH TO THE NEW SH which calls the PWD variable. Requires the two lines from above.
#done
#done


#alternative constructs from
#https://stackoverflow.com/questions/2107945/how-to-loop-over-directories-in-linux

#1
#for D in $(find /path/to/dir/ -mindepth 1 -maxdepth 1 -type d) ; do
#    echo $D ;
#done