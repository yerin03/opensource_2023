#!/bin/bash

echo "리눅스가 재밌나요? (yes/no)"
read answer

case $answer in

        yes | y | Y | Yes | YES)
                echo "yes";;
        [nN]*)
                echo "no";;
        *)
                echo "yes or no로 입력해 주세요"
                exit 1;;
esac
exit 0
