#!/usr/bin/bash

CMD=$1
PB=$2
SH=$3

case "$CMD" in
"start")
    echo "start"
    vboxmanage startvm ansi1 --type headless
    vboxmanage startvm ansi2 --type headless
    vboxmanage startvm ansi3 --type headless
    ;;
"copy")
    echo "copy"
    scp playbooks/$PB taeho@192.168.0.3:~/playbooks/$PB
    scp scripts/$SH taeho@192.168.0.3:~/scripts/$SH
    ;;
"ssh")
    echo "ssh"
    export PATH='C:\Users\kimdo\tools\teraterm-4.106:'$PATH
    start ttermpro 192.168.0.3
    ;;
"end")
    echo "end"
    vboxmanage controlvm ansi1 poweroff
    vboxmanage controlvm ansi2 poweroff
    vboxmanage controlvm ansi3 poweroff
    ;;
*)
    echo "./cmd.sh start|copy|end"
    ;;
esac