#! /bin/bash
read -p "Enter the value of x" x
read -p "Enter the value fo y" y
a=$(((( $x*$x ))+(( $y*$y ))))
b=$(echo "$a" |awk '{print sqrt($1)}')
echo "Distance from (0,0) to ($x,$y) is : "$b
