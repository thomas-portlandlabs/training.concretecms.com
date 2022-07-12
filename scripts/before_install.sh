#!/bin/bash
set -euo pipefail

tempdir=/tmp/codedeployupload

[[ -d $tempdir ]] && rm -r $tempdir
mkdir -p $tempdir

if [ "$APPLICATION_NAME" == "training.stage.concretecms.com" ]
then
  echo "export projectdir=\"/home/forge/training.stage.concretecms.com\"" > "/tmp/.cdvariables";
  echo "export deploydir=\"/home/forge/training.stage.concretecms.com/releases/$DEPLOYMENT_ID\"" >> "/tmp/.cdvariables";
elif [ "$APPLICATION_NAME" == "training.concretecms.com" ]
then
  echo "export projectdir=\"/home/forge/training.concretecms.com\"" > "/tmp/.cdvariables";
  echo "export deploydir=\"/home/forge/training.concretecms.com/releases/$DEPLOYMENT_ID\"" >> "/tmp/.cdvariables";
fi
