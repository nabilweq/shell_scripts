SERVER_USERNAME=${SERVER_USERNAME}
SERVER_IP=${SERVER_IP}
SERVER_PASSWORD=${SERVER_PASSWORD}
GITHUB_USERNAME=${GITHUB_USERNAME}
GITHUB_PASSWORD=${GITHUB_PASSWORD}

# puts "###################################-Please enter the port you want to restart:"
# expect_user -re "(.*)\n"
# set user_input $expect_out(1,string)

spawn ssh -o StrictHostKeyChecking=no $SERVER_USERNAME@$SERVER_IP

expect "password: "
send "$SERVER_PASSWORD\r"
expect "$ "
# send "pm2 restart $user_input\r"
send "pm2 restart 0\r"
expect "$ "
send "exit\r"