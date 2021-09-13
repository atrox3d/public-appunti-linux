REM color 2
REM ssh -t nbw10 "wsl -d ubuntu20 while :; do echo $(date +%d/%m/%Y-%H:%M:%S) $(service ssh status)";sleep 1;done"
REM ssh -t nbw10 wsl -d ubuntu20 -u root while :;do service ssh status;sleep 1;done
ssh -t nbw10 color a ^& wsl -d ubuntu18 -u root while :;do echo "$(date +%%d/%%m/%%Y-%%H:%%M:%%S) - ubuntu18" ;service ssh status; sleep 2;done
