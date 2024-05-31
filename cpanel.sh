# puts "###################################-Please enter the port you want to restart:"
# expect_user -re "(.*)\n"
# set user_input $expect_out(1,string)

# spawn ssh -o StrictHostKeyChecking=no $username@$ip_address

# expect "password: "
# send "$password\r"
# expect "$ "
# send "cd ../$folder\r"
scp build.zip $CPANEL_USERNAME@$CPANEL_IP_ADDRESS:../$CPANEL_FOLDER
expect "$ "
unzip build.zip
# expect "$ "
# send "git pull\r"
# expect "Username for 'https://gitlab.com: "
# send "$git_username\r"
# expect "Password for 'https://$git_username@gitlab.com': " 
# send "$git_pass\r"
# expect "$ "
# # send "pm2 restart $user_input\r"
# send "pm2 restart 0\r"
expect "$ "
send "exit\r"
