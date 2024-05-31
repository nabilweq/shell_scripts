spawn ssh -o StrictHostKeyChecking=no $SERVER_USERNAME@$SERVER_IP

expect "password: "
send "$SERVER_PASSWORD\r"
expect "$ "
send "pm2 log\r"

interact
