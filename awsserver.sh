set PEM_FILE_PATH $env(PEM_FILE_PATH)
set AWS_USER $env(AWS_USER)
set AWS_IP $env(AWS_IP)

# Get user input
puts "###################################-Please enter the path you want to add:"
expect_user -re "(.*)\n"
set user_input $expect_out(1,string)

# SSH into the server
spawn ssh -i $PEM_FILE_PATH $AWS_USER@$AWS_IP
expect "$ "
send "cd $user_input\r"

interact
