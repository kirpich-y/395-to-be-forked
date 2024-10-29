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

    mkdir -p videos/{2020,2021,2022,2023,2024}
    touch videos/{2020,2021,2022,2023,2024}/default.mp4

    mkdir -p documents/{2020,2021,2022,2023,2024}
    touch documents/{2020,2021,2022,2023,2024}/default.mp4

    echo "Структура пользователя '$username' успешно создана и инициализирована в директории $directory"
}

read -p "Введите имя пользователя: " username

create_user_structure "$username"
