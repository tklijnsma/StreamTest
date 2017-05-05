#$ -o /mnt/t3nfs01/data01/shome/tklijnsm/differentialCombination2017/CMSSW_7_4_7/src/HiggsAnalysis/SentryTest/joboutput/
#$ -e /mnt/t3nfs01/data01/shome/tklijnsm/differentialCombination2017/CMSSW_7_4_7/src/HiggsAnalysis/SentryTest/joboutput/
export VO_CMS_SW_DIR=/cvmfs/cms.cern.ch/
source /cvmfs/cms.cern.ch/cmsset_default.sh
source /swshare/psit3/etc/profile.d/cms_ui_env.sh
#!/bin/sh
ulimit -s unlimited
cd /mnt/t3nfs01/data01/shome/tklijnsm/differentialCombination2017/CMSSW_7_4_7/src
export SCRAM_ARCH=slc6_amd64_gcc491
eval `scramv1 runtime -sh`
cd HiggsAnalysis/SentryTest
./sentryTest.exe
