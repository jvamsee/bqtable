#!/bin/bash

project_id=$1
dataset_name=$2
table_name=$3

gcloud config set project $project_id

### Create Dataset
bq mk -d $dataset_name


## Create Table
bq query --use_legacy_sql=false '
CREATE TABLE IF NOT EXISTS '$dataset_name.$table_name' (
  `FIRST_NAME` STRING,
  `LAST_NAME` STRING
)'
