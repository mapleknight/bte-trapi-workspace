current_folder=`pwd`

while read -r url module_dir
do
    cd "$module_dir"
    echo
    basename "$module_dir"
    echo "-----"
    git pull
    cd $current_folder
done < scripts/packages.txt
