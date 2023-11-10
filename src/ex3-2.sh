#!/bin/sh

num1="$1"
operator="$2"
num2="$3"

if [ "$operator" = "+" ]; then
        num3=$(expr "$num1" + "$num2")
        echo "$num3"
elif [ "$operator" = "-" ]; then
        num3=$(expr "$num1" - "$num2")
        echo "$num3"
elif [ "$operator" = "*" ]; then
        num3=$(expr "$num1" \* "$num2") 
        echo "$num3"
elif [ "$operator" = "/" ]; then  
        num3=$(expr "$num1" / "$num2")
        echo "$num3"
fi

exit 0

