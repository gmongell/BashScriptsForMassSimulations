#!/bin/sh

for i in 8.8.2013 9.3.2013 9.5.2013 1.3.2014 1.29.2014 
do
for j in PE4 PE5 PE10 PE18 PE24 PP6 PP9 PP12 PP15 PP18 PP24 PIB12 PIB24 PIB36
do
cp /fs/lustre/cwr0408/1.29.2014/ethanol3.top /fs/lustre/cwr0408/$i/$j/ethanol.top
done
done



for k in PE6_3 PE8_3 PE12_4
do
cp /fs/lustre/cwr0408/1.29.2014/ethanol3.top /fs/lustre/cwr0408/9.5.2013/$j/ethanol.top
done




for l in 8.8.2013 9.3.2013 1.3.2014
do
cp /fs/lustre/cwr0408/1.29.2014/ethanol3.top /fs/lustre/cwr0408/$l/PE12_3/ethanol.top
done


#after reviewing each of the folders, it became clear that some did not get the new
#ethanol topology file.  The following section copies the topology into these folders.



for k in PE6 PE8
do
cp /fs/lustre/cwr0408/1.29.2014/ethanol3.top /fs/lustre/cwr0408/1.29.2014/$k/ethanol.top
cp /fs/lustre/cwr0408/1.29.2014/ethanol3.top /fs/lustre/cwr0408/1.3.2014/$k/ethanol.top
cp /fs/lustre/cwr0408/1.29.2014/ethanol3.top /fs/lustre/cwr0408/9.3.2013/$k/ethanol.top
cp /fs/lustre/cwr0408/1.29.2014/ethanol3.top /fs/lustre/cwr0408/8.8.2013/$k/ethanol.top
done


for k in PE14
do
cp /fs/lustre/cwr0408/1.29.2014/ethanol3.top /fs/lustre/cwr0408/1.3.2014/$k/ethanol.top
cp /fs/lustre/cwr0408/1.29.2014/ethanol3.top /fs/lustre/cwr0408/9.3.2013/$k/ethanol.top
cp /fs/lustre/cwr0408/1.29.2014/ethanol3.top /fs/lustre/cwr0408/8.8.2013/$k/ethanol.top
done

for k in PE4_bulkstart
do
cp /fs/lustre/cwr0408/1.29.2014/ethanol3.top /fs/lustre/cwr0408/1.3.2014/$k/ethanol.top
done

for l in PE6_3 PE8_3 PE12_4 PE14_2PolyInBulk
do
cp /fs/lustre/cwr0408/1.29.2014/ethanol3.top /fs/lustre/cwr0408/9.5.2013/$l/ethanol.top
done