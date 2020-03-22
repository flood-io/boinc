#!/bin/bash
set -e

/usr/bin/boinc \
  --abort_jobs_on_exit \
  --no_gpus \
  --suppress_net_info \
  --attach_project ${PROJECT_URL} ${ACCOUNT_KEY} \
  "${@}"
