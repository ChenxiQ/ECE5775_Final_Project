#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/yl3524/ece5775/ECE5775_Final_Project/ecelinux/pca.prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
