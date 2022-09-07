#!/bin/bash
set -euo pipefail

tempdir=/tmp/training/codedeployupload

[[ -d $tempdir ]] && rm -r $tempdir
mkdir -p $tempdir

mkdir /tmp/$DEPLOYMENT_ID

echo "export tempdir=\"$tempdir\"" > "/tmp/$DEPLOYMENT_ID/.cdvariables";

if [ "$APPLICATION_NAME" == "training.stage.concretecms.com" ]
then
  echo "export projectdir=\"/home/forge/training.stage.concretecms.com\"" >> "/tmp/$DEPLOYMENT_ID/.cdvariables";
  echo "export deploydir=\"/home/forge/training.stage.concretecms.com/releases/$DEPLOYMENT_ID\"" >> "/tmp/$DEPLOYMENT_ID/.cdvariables";
elif [ "$APPLICATION_NAME" == "training.concretecms.com" ]
then
  echo "export projectdir=\"/home/forge/training.concretecms.com\"" >> "/tmp/$DEPLOYMENT_ID/.cdvariables";
  echo "export deploydir=\"/home/forge/training.concretecms.com/releases/$DEPLOYMENT_ID\"" >> "/tmp/$DEPLOYMENT_ID/.cdvariables";
fi
