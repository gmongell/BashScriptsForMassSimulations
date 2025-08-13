#!/bin/sh
module load gnuplot/4.6.4

for i in EtOHMix80
do
for j in PE4
do
for FILE in r_concat.dat 
do
cd /fs/lustre/cwr0408/$i/$j/


#This file takes in the output xvg file from g_density and
#

gnuplot <<EOF
    set datafile commentschars "#!"
    set xlabel "time (ps)"
    set ylabel "surface parameter (f)"
    set term png
    set output "r_concat1.png"
    plot "r_concat.dat" using (column(0)):1 title "${i} ${j} ${FILE} f1"
EOF

gnuplot << \EOF
    set datafile commentschars "#!@"
    set term png
    set output "pullx_density_histogram_${i} ${j}.png"
    set style data histogram
    set style histogram cluster gap 1
    set style fill solid border -1
    set boxwidth .25 
    bw = .25 
    bin(x)=bw*floor(x/bw) + bw/2.0 
    set yrange [0:*]; set xrange [0:*]
    set size 0.6, 1
    set xlabel "z (nm)"
    set ylabel "Relative number"
    plot "pullx.xvg" using (bin($2)):2 smooth freq with boxes
EOF

done
done
done


#for other types of files the file name may be passed into the title or not.
#only useful if generalizing to all dat files and then passing the file names into
#the titles.  Otherwise, simply hard code the data type into the title.
