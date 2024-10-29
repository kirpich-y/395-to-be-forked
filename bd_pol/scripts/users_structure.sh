if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    cd "$(dirname "${BASH_SOURCE[0]}")"
fi

create_user_structure() {
    local username="$1"
    local directory="~/users/$username"

    mkdir -p "$directory"

    cd "$directory"
    git init

    mkdir -p photos/{2020,2021,2022,2023,2024}
    touch photos/{2020,2021,2022,2023,2024}/default.png


    echo "Структура пользователя '$username' успешно создана и инициализирована в директории $directory"
}

# Запрашиваем у пользователя имя пользователя
read -p "Введите имя пользователя: " username

# Создаем структуру пользователя
create_user_structure "$username"
