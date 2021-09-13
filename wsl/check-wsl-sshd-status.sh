#!/bin/bash
ssh nbw10 wsl -d ubuntu20 'while :; do echo "$(date +%d/%m/%Y-%H:%M:%S) $(service ssh status)";sleep 1;done'
