#!/usr/bin/ksh
##########################################
#
# Script sends jtjob to make Jade ntuples a la OPAL
#
##########################################

# Time stamp:
echo job starts at `date`

# Check current platform
if [ `uname` != 'AIX' ] ; then
   echo Current platform is not supported.
   exit
fi

# Path to jtjob executeable:
JTPATH=${PWD}

# Directory for job execution:
JOBDIR=/remote/pcl246/skluth/jade/jobs/jtuple

# Set up JADE environment:
JADEPATH=/mnt/home/pcl246/skluth/qcd/jadesoft
cd ${JADEPATH}
. ./Init_jade_env.ksh

# Base for names:
BNAME=$1

# Bosfile numbers in a series:
START=$2
STOP=$3

# Set input supervisor BOS file (no more than 78 characters)
SVBOS=sv_${BNAME}

# Set the name of the ouput files for this run
NAME=jt_${BNAME}.${START}-${STOP}

# Set calibration file: Use either AUPDAT1 or ( BUPDAT0 and BUPDAT1 )
CALFILE=${JADE_CAL}/aupdat1.b

# Go to scratch directory:
cd ${JOBDIR}/${BNAME}
# out=${BNAME}
# mkdir -p $out
# cd $out

# Create FFREAD job steering:
cat > ${NAME}.ffr << EOF
C created by script sendjtjob.ksh on `date`
LIST
EOF
# Add *SVBOSF cards:
((idx=$START-1))
while [ $idx -lt $STOP ]
do
((idx=$idx+1))
cat >> ${NAME}.ffr << EOF
*SVBOSF '${SVBOS}.bos.${idx}'
EOF
done
# Other cards:
cat >> ${NAME}.ffr << EOF
JTUPLE 1=44 3='${NAME}.hbook'
CALIB '${CALFILE}'
C MAXREC 102
ZE4VMODE off
STOP
EOF

# Execute:
time ${JTPATH}/jtjob < ${NAME}.ffr

# Time stamp:
echo job ends at `date`

# The End
exit
