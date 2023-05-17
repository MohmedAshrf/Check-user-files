#!/bin/bash

echo "Finding users with no .cshrc file under their directory...."

find /users -maxdepth 2 -type f -name ".cshrc" | cut -d / -f 3 > /tmp/passed_users

ls /users > /tmp/all_users

echo "Users are:"
# getting the users that don't have the .cshrc file under their directory
grep -Fvf  /tmp/passed_users /tmp/all_users
