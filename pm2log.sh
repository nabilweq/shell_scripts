set SERVER_USERNAME $env(SERVER_USERNAME)
set SERVER_IP $env(SERVER_IP)
set SERVER_PASSWORD $env(SERVER_PASSWORD)

spawn ssh -o StrictHostKeyChecking=no $SERVER_USERNAME@$SERVER_IP

expect "password: "
send "$SERVER_PASSWORD\r"
expect "$ "
send "pm2 log\r"

interact
