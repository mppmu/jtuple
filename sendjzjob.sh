#!/bin/sh
##########################################
#
# Script sends jzread to make Jade ntuples a la OPAL from ze4v
#
##########################################

# Time stamp:
echo job starts at `date`

# Check current platform
if [ `uname` != 'Linux' ] ; then
   echo Current platform is not supported.
   exit 1
fi

# Path to jzjob executeable:
JTPATH=${PWD}

# Directory for job execution:
JOBDIR=/remote/pcl246/skluth/jade/jobs/jzread

# Base for names:
BNAME=$1

# File numbers in a series:
START=$2
STOP=$3

# Set input ze4v file:
ZE4V=${BNAME}

# Set the name of the ouput files for this run
NAME=jz_${BNAME}.${START}-${STOP}

# Go to scratch directory:
cd ${JOBDIR}/${BNAME}

# Create FFREAD job steering:
cat > ${NAME}.ffr << EOF
C created by script sendjzjob.sh on `date`
LIST
EOF
# Add *ZE4VFILE cards:
((idx=$START-1))
while [ $idx -lt $STOP ]
do
((idx=$idx+1))
cat >> ${NAME}.ffr << EOF
*ZE4VFILE '${ZE4V}.ze4v.${idx}'
EOF
done
# Other cards:
cat >> ${NAME}.ffr << EOF
JTUPLE 1=44 3='${NAME}.hbook'
STOP
EOF

# Execute:
time ${JTPATH}/jzread < ${NAME}.ffr

# Time stamp:
echo job ends at `date`

# The End
exit
