#!/bin/bash
for i in {1,2,4,6,8,12}
do
   echo "Speccy standard, 32x22, 15 max iteration, $i thread"
   for j in {1..10}
   do
      ./mandelbrot -w32 -h22 -i15 -t${i}
   done
done

for i in {1,2,4,6,8,12}
do
   echo "EGA/NTSC standard, 320x200, 16 max iteration, $i thread"
   for j in {1..10}
   do
      ./mandelbrot -w320 -h200 -i16 -t${i}
   done
done

for i in {1,2,4,6,8,12,16,24,32,48,64,96,128}
do
   echo "4K UHD, 3840x2160, 2000 max iteration, $i thread"
   for j in {1..10}
   do
      ./mandelbrot -w3840 -h2160 -i2000 -t${i}
   done
done
