#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/yx388/ece5775/final_project/ECE5775_Final_Project/ecelinux_dummy/pca.prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
