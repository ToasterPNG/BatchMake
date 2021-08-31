@echo off
title building
start build
ping 127.0.0.1 -n 2 > nul
title running
start run-build
exit