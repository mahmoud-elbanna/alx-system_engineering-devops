#!/usr/bin/env bash
# using puppet to make changes yo our configuration file

file { '/etc/ssh/ssh_config':
  ensure  => present,
  content => "#ssh client configuration\nhost *\n  IdentityFile ~/.ssh/school\n  PasswordAuthentication no\n",
}
