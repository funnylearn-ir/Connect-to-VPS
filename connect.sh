#!/bin/bash

read -p $'\033[1;32mEnter the \033[1mIP address\033[0m\033[1;32m of the server: \033[0m' IP

read -p $'\033[1;32mEnter the \033[1mport\033[0m\033[1;32m of the server (Press Enter for default port 22): \033[0m' PORT

if [ -z "$PORT" ]; then
    PORT=22
fi

echo "Connecting to the server..."

ssh root@$IP -p $PORT
