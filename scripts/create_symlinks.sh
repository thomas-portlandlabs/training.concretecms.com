#!/bin/bash
set -euo pipefail

source "/tmp/$DEPLOYMENT_ID/.cdvariables"

mv $tempdir $deploydir

ln -sfn $projectdir/.env $deploydir/.env
ln -sfn $projectdir/shared/files $deploydir/public/application/files
ln -sfn $projectdir/shared/generated_overrides $deploydir/public/application/config/generated_overrides
