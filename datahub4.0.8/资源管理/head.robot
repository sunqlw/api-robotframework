*** Settings ***
Library           RequestsLibrary
Library           Collections
Library           HttpLibrary.HTTP
Library           String
Library           DateTime
Library           我的代码/deal_dictionary.py
Library           我的代码/res_model.py
Resource          通用模块.robot
Resource          接口关键字/资源管理模块.robot
Resource          接口关键字/组件模块.robot
Resource          接口关键字/任务模块.robot
Variables         测试数据/env_variables.py    ${env}
Variables         测试数据/res_params.py

*** Variables ***
${uri_prefix}     /datahub
&{GLOBAL_RES_TYPE}    mysql=38    oracle=4    sqlserver=15    postgresql=24    hive=31    db2=44    hdfs=51    hbase=63    s3=66    ftp=64    hana=67
