SERVER_USERNAME=${SERVER_USERNAME}
SERVER_IP=${SERVER_IP}
SERVER_PASSWORD=${SERVER_PASSWORD}

spawn ssh -o StrictHostKeyChecking=no $SERVER_USERNAME@$SERVER_IP

expect "password: "
send "$SERVER_PASSWORD\r"
expect "$ "
send "pm2 log\r"

interact
