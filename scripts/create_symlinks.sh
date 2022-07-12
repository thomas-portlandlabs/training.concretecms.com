#!/bin/bash
set -euo pipefail

source "/tmp/.cdvariables"

mv /tmp/codedeployupload $deploydir

ln -sfn $projectdir/.env $deploydir/.env
ln -sfn $projectdir/shared/files $deploydir/public/application/files
ln -sfn $projectdir/shared/generated_overrides $deploydir/public/application/config/generated_overrides
