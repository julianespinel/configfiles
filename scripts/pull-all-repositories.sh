send_user "Git username: "
expect_user -re "(.*)\n"
set username $expect_out(1,string)

stty -echo
send_user "Git password: "
expect_user -re "(.*)\n"
send_user "\n"
stty echo
set password $expect_out(1,string)

cd factuur
spawn git pull
expect "Username"
send "$username\n"
expect "Password"
send "$password\n"
interact
