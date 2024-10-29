
create_project_structure() {
    local project_name="$1"
    local project_dir="$2"

    mkdir -p "$project_dir/$project_name"

    mkdir -p "$project_dir/$project_name/src"

    mkdir -p "$project_dir/$project_name/src/scripts"
    mkdir -p "$project_dir/$project_name/src/styles"
    mkdir -p "$project_dir/$project_name/src/images"

    cat << EOF > "$project_dir/$project_name/README.md"




cat << EOF > "$project_dir/$project_name/.gitignore"
.vscode/
__pycache__/
*.log
*.pyc
*.pyo
*.pyd
EOF
}

read -p "Введите название проекта: " project_name
read -p "Введите директорию для создания структуры: " project_dir

create_project_structure "$project_name" "$project_dir"

echo "Структура проекта '$project_name' успешно создана в директории $project_dir"
