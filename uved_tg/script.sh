read -p "Введите сообщение: " SOME_TEXT

read -p "Введите идентификатор чата: " CHAT_ID

URL="https://api.telegram.org/bot${7933402257:AAHP0hbVaYWiPIn_PdPL-gV0yJ5uvW8hHKI}/sendMessage"

DATA="chat_id=${CHAT_ID}&text=${SOME_TEXT}"

curl -X POST -d "$DATA" "$URL"

echo "Сообщение отправлено!"