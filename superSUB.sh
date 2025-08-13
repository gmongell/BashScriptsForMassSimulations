#!/bin/sh

for i in PE4 PE5 PE6 PE8 PE10 PE12 PE14 PE18 PE24 PP6 PP9 PP12 PP15 PP18
do 
cd /fs/lustre/cwr0408/1.29.2014/$i
ifort -o buildTop buildTop.f  
./buildTop
sh ./sequentialMDRun2.sh   
done

for i in PIB12 PIB24 PIB36
do 
cd /fs/lustre/cwr0408/1.29.2014/$i
ifort -o buildTop2 buildTop2.f  
./buildTop2
sh ./sequentialMDRun2.sh   
done