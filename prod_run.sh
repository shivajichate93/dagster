#!/bin/sh
./cloud_sql_proxy -dir=/cloudsql -instances=charged-skein-354804:us-central1:dagster=tcp:34.135.204.152:5432 &
sleep 10
dagster-daemon run &
dagit -h 0.0.0.0 -p 3000 -w /opt/dagster/app/workspace.yaml
