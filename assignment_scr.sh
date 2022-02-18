#!/bin/bash
echo "Hi Sir/madam. Press 1 for sigup and 2 for login"
read num
    if [ $num -eq 1 ]
    then
    echo "Enter username"
    read user
    echo "Enter password"
    read pwd
    echo "$user $pwd" >> auth.txt
    echo "Relaunch script to login" 
    sleep 2

    else 
    echo "Username:"
    read user
    echo "Password:"
    read pwd
    file="auth.txt"
    while read line; do
        c="$user $pwd"
        echo "$c"
        if [ "$line" == "$c" ]
        then
        echo "You are welcome"
        else
        echo "Wrong username or password"
        fi
    done < $file 
    fi