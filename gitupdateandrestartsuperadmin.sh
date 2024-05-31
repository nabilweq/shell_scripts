# puts "###################################-Please enter the port you want to restart:"
# expect_user -re "(.*)\n"
# set user_input $expect_out(1,string)

spawn ssh -o StrictHostKeyChecking=no $SERVER_USERNAME@$SERVER_IP

expect "password: "
send "$SERVER_PASSWORD\r"
expect "$ "
send "cd $FOLDER2\r"
expect "$ "
send "git pull\r"
expect "Username for 'https://gitlab.com: "
send "$GITHUB_USERNAME\r"
expect "Password for 'https://$GITHUB_USERNAME@gitlab.com': " 
send "$GITHUB_PASSWORD\r"
expect "$ "
# send "pm2 restart $user_input\r"
send "pm2 restart 9\r"
expect "$ "
send "exit\r"