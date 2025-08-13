#!/bin/sh

#If you did not know about the qsub -V function which passes shell script variables
#into a single set of pbs scripts -- a more space efficient method than this one --
#you could have all of your files pre-created in various folders and copy a single set
#of PBS scripts into the various folders and the shell script that inter-relates
#their job dependencies, the calls the shell script for job submission.

#copying from PP24 folder to new polymer folder

for i in PP18 PP15 PP12 PP9 PP6 PE24 PE18 PE14 PE12 PE8 PE6 PE5 PE4
do
cp /nfs/05/cwr0408/DoctoralResearch/8.8.2013/DanTopFilesProgram/PP_24C/em.pbs /nfs/05/cwr0408/DoctoralResearch/8.8.2013/DanTopFilesProgram/PP_18C/em.pbs
sed -i 's/PP24/$i/g' /nfs/05/cwr0408/DoctoralResearch/8.8.2013/DanTopFilesProgram/PP_18C/em.pbs
sed -i 's/PP_24/PP_18/g' /nfs/05/cwr0408/DoctoralResearch/8.8.2013/DanTopFilesProgram/PP_18C/em.pbs
cp /nfs/05/cwr0408/DoctoralResearch/8.8.2013/DanTopFilesProgram/PP_24C/firstmd.pbs /nfs/05/cwr0408/DoctoralResearch/8.8.2013/DanTopFilesProgram/PP_18C/firstmd.pbs
sed -i 's/PP24/$i/g' /nfs/05/cwr0408/DoctoralResearch/8.8.2013/DanTopFilesProgram/PP_18C/firstmd.pbs
sed -i 's/PP_24/PP_18/g' /nfs/05/cwr0408/DoctoralResearch/8.8.2013/DanTopFilesProgram/PP_18C/firstmd.pbs
cp /nfs/05/cwr0408/DoctoralResearch/8.8.2013/DanTopFilesProgram/PP_24C/secondmd.pbs /nfs/05/cwr0408/DoctoralResearch/8.8.2013/DanTopFilesProgram/PP_18C/secondmd.pbs
sed -i 's/PP24/$i/g' /nfs/05/cwr0408/DoctoralResearch/8.8.2013/DanTopFilesProgram/PP_18C/secondmd.pbs
sed -i 's/PP_24/PP_18/g' /nfs/05/cwr0408/DoctoralResearch/8.8.2013/DanTopFilesProgram/PP_18C/secondmd.pbs
cp /nfs/05/cwr0408/DoctoralResearch/8.8.2013/DanTopFilesProgram/PP_24C/thirdmd.pbs /nfs/05/cwr0408/DoctoralResearch/8.8.2013/DanTopFilesProgram/PP_18C/thirdmd.pbs
sed -i 's/PP24/$i/g' /nfs/05/cwr0408/DoctoralResearch/8.8.2013/DanTopFilesProgram/PP_18C/thirdmd.pbs
sed -i 's/PP_24/PP_18/g' /nfs/05/cwr0408/DoctoralResearch/8.8.2013/DanTopFilesProgram/PP_18C/thirdmd.pbs
cp /nfs/05/cwr0408/DoctoralResearch/8.8.2013/DanTopFilesProgram/PP_24C/sequentialMDRuns2.sh /nfs/05/cwr0408/DoctoralResearch/8.8.2013/DanTopFilesProgram/PP_18C/sequentialMDRuns2.pbs
sed -i 's/PP24/$i/g' /nfs/05/cwr0408/DoctoralResearch/8.8.2013/DanTopFilesProgram/PP_18C/sequentialMDRuns2.sh
sed -i 's/PP_24/PP_18/g' /nfs/05/cwr0408/DoctoralResearch/8.8.2013/DanTopFilesProgram/PP_18C/sequentialMDRuns2.sh
done

#running each of the scripts
for i in
do
sh /nfs/05/cwr0408/DoctoralResearch/8.8.2013/$i/sequentialMDRuns2.sh
sh /nfs/05/cwr0408/DoctoralResearch/8.8.2013/$i/sequentialMDRuns2.sh
sh /nfs/05/cwr0408/DoctoralResearch/8.8.2013/$i/sequentialMDRuns2.sh
sh /nfs/05/cwr0408/DoctoralResearch/8.8.2013/$i/sequentialMDRuns2.sh
sh /nfs/05/cwr0408/DoctoralResearch/8.8.2013/$i/sequentialMDRuns2.sh
sh /nfs/05/cwr0408/DoctoralResearch/8.8.2013/$i/sequentialMDRuns2.sh
done