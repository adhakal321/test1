select 'ALTER STAGE '||STAGE_CATALOG ||'.'||STAGE_SCHEMA||'.'||STAGE_NAME ||' SET URL = ''' || REPLACE(stage_url,'s3://nzp-prd-s3-dataplatform','s3://nzp-npe-s3-dataplatform/dev') ||''',storage_integration =s3_integration_npe;' as stage from DEV_RAW_SAMI.information_schema.stages ;
