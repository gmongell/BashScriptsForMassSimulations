#!/bin/sh


Fold=/fs/lustre/cwr0408/1.29.2014/
echo "$Fold"

#PE12 missing from variables below because it is not needed.  PE12_4 completed with the correct
#topology.

for i in PE4 PE4_bulkstart PE5 PE6_3 PE8_3 PE10 PE12_4 PE14_2 PE14_rerun PE14_2PolyInBulk PE18 PE24 PP6 PP9 PP12 PP15 PP18 PIB12 PIB24 PIB36 
do
cd /fs/lustre/cwr0408/9.5.2013/$i
sh ./sequentialMDRun2.sh
done


#modify the subthem all script to incorporate all alcohol contents
#keep in mind that all of the sh scripts must have the associated 
#folder locations changed.  Can I pass environment variables like
#PBS_O_WRKDIR into shell scripts?  test this with an echo command.
#If I can, then I can greatly simplify the shell scripts!

for i in PE4 PE5 PE6 PE8 PE10 PE14_3 PE18 PE24 PP6 PP9 PP12 PP15 PP18 PIB12 PIB24 PIB36
do
cd /fs/lustre/cwr0408/1.29.2014/$i
sh ./sequentialMDRun2.sh
done

for i in PE4 PE5 PE6 PE8 PE10 PE14_3 PE18 PE24 PP6 PP9 PP12 PP15 PP18 PIB12 PIB24 PIB36
do
cd /fs/lustre/cwr0408/1.3.2014/$i
sh ./sequentialMDRun2.sh
done

for i in PE4 PE5 PE6 PE8 PE10 PE14_3 PE18 PE24 PP6 PP9 PP12 PP15 PP18 PIB12 PIB24 PIB36
do
cd /fs/lustre/cwr0408/9.5.2013/$i
sh ./sequentialMDRun2.sh
done

for i in PE4 PE5 PE6 PE8 PE10 PE14_3 PE18 PE24 PP6 PP9 PP12 PP15 PP18 PIB12 PIB24 PIB36
do
cd /fs/lustre/cwr0408/9.3.2013/$i
sh ./sequentialMDRun2.sh
done

for i in PE4 PE5 PE6 PE8 PE10 PE14_3 PE18 PE24 PP6 PP9 PP12 PP15 PP18 PIB12 PIB24 PIB36
do
cd /fs/lustre/cwr0408/8.8.2013/$i
sh ./sequentialMDRun2.sh
done