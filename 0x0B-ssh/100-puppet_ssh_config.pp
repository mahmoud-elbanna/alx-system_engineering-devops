#!/user/bin/env bash
# using puppet to make changes yo our configuration file

file {'ect/ssh/ssh_config':
ensure  => present,
content =>"
#ssh client configuration
host*
IdentityFile ~/.ssh/school
PasswordAuthentication no
",
}
