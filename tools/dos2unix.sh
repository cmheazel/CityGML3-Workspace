FILES=`/bin/ls edit-dd.sh`

for I in $FILES
do
cat $I | sed 's/\r$//' > temp_$I
mv temp_$I $I
done

