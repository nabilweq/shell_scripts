set SERVER_USERNAME $env(SERVER_USERNAME)
set SERVER_IP $env(SERVER_IP)
set SERVER_PASSWORD $env(SERVER_PASSWORD)
set FOLDER1 $env(FOLDER1)
set GITHUB_USERNAME $env(GITHUB_USERNAME)
set GITHUB_PASSWORD $env(GITHUB_PASSWORD)

# puts "###################################-Please enter the port you want to restart:"
# expect_user -re "(.*)\n"
# set user_input $expect_out(1,string)

spawn ssh -o StrictHostKeyChecking=no $SERVER_USERNAME@$SERVER_IP

expect "password: "
send "$SERVER_PASSWORD\r"
expect "$ "
# send "pm2 restart $user_input\r"
send "cd $FOLDER1\r"
expect "$ "
send "git pull\r"
expect "Username for 'https://gitlab.com: "
send "$GITHUB_USERNAME\r"
expect "Password for 'https://$GITHUB_USERNAME@gitlab.com': " 
send "$GITHUB_PASSWORD\r"
expect "$ "
send "exit\r"