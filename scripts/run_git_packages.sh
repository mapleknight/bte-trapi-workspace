current_folder=`pwd`

module_directories=(
    "./packages/@biothings-explorer/bte-trapi"
    "./packages/@biothings-explorer/query_graph_handler"
    "./packages/biolink-model"
    "./packages/biomedical_id_resolver"
    "./packages/@biothings-explorer/smartapi-kg"
    "./packages/@biothings-explorer/call-apis"
    "./packages/@biothings-explorer/api-response-transform"
)

for module_dir in "${module_directories[@]}"
do
    cd "$module_dir"
    echo
    basename "$module_dir"
    echo "-----"
    git $*
    cd $current_folder
done
