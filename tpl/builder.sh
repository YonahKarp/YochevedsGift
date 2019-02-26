cd tpl

for filename in *.tpl; do
    echo 'building file' $filename
    awk -f ./include.sh $filename > ../$(basename "$filename" .tpl).html
done

cd ..