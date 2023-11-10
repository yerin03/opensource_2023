#!/bin/bash

execute_ls(){
	echo "Enter function"
	ls "$@"
}
execute_ls "$@"

echo "Exit the program"
exit 0
