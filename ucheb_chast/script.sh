
create_course_structure() {
    local course_name="$1"
    local students_count="$2"

    if [ ! -d "$course_name" ]; then
        mkdir -p "$course_name"
    fi

    mkdir -p "$course_name/Студенты"
    touch "$course_name/Оценки.txt"

    echo "Структура папок для курса '$course_name' создана."
}

add_student_grade() {
    local student_name="$1"
    local grade="$2"
    local course_name="$3"

    echo "$student_name: $grade" >> "$course_name/Оценки.txt"
    echo "Оценка '$student_name' добавлена в файл 'Оценки.txt' для курса '$course_name'."
}

edit_grade() {
    local student_name="$1"
    local new_grade="$2"
    local course_name="$3"

    sed -i "/$student_name:/s/.*/$student_name: $new_grade/" "$course_name/Оценки.txt"
    echo "Оценка '$student_name' обновлена в файле 'Оценки.txt' для курса '$course_name'."
}

main() {
    read -p "Укажите название курса: " course_name
    read -p "Сколько студентов в группе? " students_count

    create_course_structure "$course_name" "$students_count"

    for i in $(seq 1 "$students_count"); do
        read -p "Студент $i: " student_name
        add_student_grade "$student_name" "" "$course_name"
    done

    echo "Оценки добавлены в файл 'Оценки.txt' для курса '$course_name'."
}

main
