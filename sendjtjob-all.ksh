#!/usr/bin/ksh

# Send groups of jobs to produce ntuples directly from
# JADE superv data

# Usage: sendjtjob-all.ksh <ecms>
# <ecms> is one of 14, 22, 35a, 35b, 38, 44; other values are ignored

# Jobs run only IBM AIX systems:
if [ `uname` != 'AIX' ]; then
   echo "Current platform" `uname` "is not supported, must be AIX."
   exit 1
fi

# Set ECMS from command line parameter:
ECMS=$1

if [ ${ECMS} = '14' ] ; then

# 14 GeV:
    ./sendjtjob.ksh py57_14.0_81-07-17 1 5 > jt_py57_14.0_81-07-17.1-5.log
    ./sendjtjob.ksh py57_14.0_81-07-17 6 10 > jt_py57_14.0_81-07-17.6-10.log
    ./sendjtjob.ksh hw59_14.0_81-07-17 1 5 > jt_hw59_14.0_81-07-17.1-5.log
    ./sendjtjob.ksh hw59_14.0_81-07-17 6 10 > jt_hw59_14.0_81-07-17.6-10.log

elif [ ${ECMS} = '22' ] ; then

# 22 GeV:
    ./sendjtjob.ksh py57_22.0_81-06-17 1 5 > jt_py57_22.0_81-06-17.1-5.log
    ./sendjtjob.ksh py57_22.0_81-06-17 6 10 > jt_py57_22.0_81-06-17.6-10.log
    ./sendjtjob.ksh hw59_22.0_81-06-17 1 5 > jt_hw59_22.0_81-06-17.1-5.log
    ./sendjtjob.ksh hw59_22.0_81-06-17 6 10 > jt_hw59_22.0_81-06-17.6-10.log

elif [ ${ECMS} = '35a' ] ; then

# 34.6 GeV from 1982:
    ./sendjtjob.ksh py57_34.6_82-05-17 1 5 > jt_py57_34.6_82-05-17.1-5.log
    ./sendjtjob.ksh py57_34.6_82-05-17 6 10 > jt_py57_34.6_82-05-17.6-10.log
    ./sendjtjob.ksh py57_34.6_82-05-17 11 15 > jt_py57_34.6_82-05-17.11-15.log
    ./sendjtjob.ksh py57_34.6_82-05-17 16 20 > jt_py57_34.6_82-05-17.16-20.log
    ./sendjtjob.ksh hw59_34.6_82-05-17 1 5 > jt_hw59_34.6_82-05-17.1-5.log
    ./sendjtjob.ksh hw59_34.6_82-05-17 6 10 > jt_hw59_34.6_82-05-17.6-10.log
    ./sendjtjob.ksh hw59_34.6_82-05-17 11 15 > jt_hw59_34.6_82-05-17.11-15.log
    ./sendjtjob.ksh hw59_34.6_82-05-17 16 20 > jt_hw59_34.6_82-05-17.16-20.log

elif [ ${ECMS} = '35b' ]; then

# 35 GeV from 1986:
    ./sendjtjob.ksh py57_35.0_86-05-17 1 5 > jt_py57_35.0_86-05-17.1-5.log
    ./sendjtjob.ksh py57_35.0_86-05-17 6 10 > jt_py57_35.0_86-05-17.6-10.log
    ./sendjtjob.ksh py57_35.0_86-05-17 11 15 > jt_py57_35.0_86-05-17.11-15.log
    ./sendjtjob.ksh py57_35.0_86-05-17 16 20 > jt_py57_35.0_86-05-17.16-20.log
    ./sendjtjob.ksh hw59_35.0_86-05-17 1 5 > jt_hw59_35.0_86-05-17.1-5.log
    ./sendjtjob.ksh hw59_35.0_86-05-17 6 10 > jt_hw59_35.0_86-05-17.6-10.log
    ./sendjtjob.ksh hw59_35.0_86-05-17 11 15 > jt_hw59_35.0_86-05-17.11-15.log
    ./sendjtjob.ksh hw59_35.0_86-05-17 16 20 > jt_hw59_35.0_86-05-17.16-20.log

elif [ ${ECMS} = '38' ]; then

# 38.3 GeV:
    ./sendjtjob.ksh py57_38.3_85-10-01 1 5 > jt_py57_38.3_85-10-01.1-5.log
    ./sendjtjob.ksh py57_38.3_85-10-01 6 10 > jt_py57_38.3_85-10-01.6-10.log
    ./sendjtjob.ksh hw59_38.3_85-10-01 1 5 > jt_hw59_38.3_85-10-01.1-5.log
    ./sendjtjob.ksh hw59_38.3_85-10-01 6 10 > jt_hw59_38.3_85-10-01.6-10.log

elif [ ${ECMS} = '44' ]; then

# 43.8 GeV:
    ./sendjtjob.ksh py57_43.8_85-05-17 1 5 > jt_py57_43.8_85-05-17.1-5.log
    ./sendjtjob.ksh py57_43.8_85-05-17 6 10 > jt_py57_43.8_85-05-17.6-10.log
    ./sendjtjob.ksh hw59_43.8_85-05-17 1 5 > jt_hw59_43.8_85-05-17.1-5.log
    ./sendjtjob.ksh hw59_43.8_85-05-17 6 10 > jt_hw59_43.8_85-05-17.6-10.log

else

# Error, wrong value of ECMS:
    echo "E_cms= ${ECMS} ignored, choose one of 14, 22, 35a, 35b, 38, 44"
    exit 2

fi

# The End:
exit
