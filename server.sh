set SERVER_USERNAME $env(SERVER_USERNAME)
set SERVER_IP $env(SERVER_IP)
set SERVER_PASSWORD $env(SERVER_PASSWORD)
set FOLDER1 $env(FOLDER1)

# puts "###################################-Please enter the path you want to add:"
# expect_user -re "(.*)\n"
# set user_input $expect_out(1,string)

spawn ssh -o StrictHostKeyChecking=no $SERVER_USERNAME@$SERVER_IP

expect "password: "
send "$SERVER_PASSWORD\r"
expect "$ "
# send "cd ../smarthatch$user_input\r"
send "cd $FOLDER1\r"
# expect "$ "
# send "exit\r"


interact

