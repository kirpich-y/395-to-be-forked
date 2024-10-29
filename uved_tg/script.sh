read -p "Введите сообщение: " SOME_TEXT

read -p "Введите идентификатор чата: " CHAT_ID

read -p "Введите токен бота: " BOT_TOKEN

URL="https://api.telegram.org/bot${BOT_TOKEN}/sendMessage"

DATA="chat_id=${CHAT_ID}&text=${SOME_TEXT}"

curl -X POST -d "$DATA" "$URL"

echo "Сообщение отправлено!"