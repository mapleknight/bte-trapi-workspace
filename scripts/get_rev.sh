current_folder=`pwd`

echo '# Generated from "npm run get_rev" on ' $(date)

echo `git ls-remote --get-url` `git rev-parse --short HEAD` `git rev-parse HEAD`

while read -r url module_dir
do
    echo `git ls-remote --get-url` `git rev-parse --short HEAD` `git rev-parse HEAD`
done < scripts/packages.txt
