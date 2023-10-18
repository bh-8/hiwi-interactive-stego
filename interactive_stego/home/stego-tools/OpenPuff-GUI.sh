#!/bin/bash
WINEDEBUG=fixme-all,err-all wine "/home/bin/OpenPuff_release/OpenPuff.exe"
exit $?
