file=`(find . -name "plt*" -printf '%P\n')`

for i in $file
do
echo 'f-averaging',$i
    ./Faverage.Linux.gfortran.exe -p $i -o faverage$i -d 3 -f -q 
done
