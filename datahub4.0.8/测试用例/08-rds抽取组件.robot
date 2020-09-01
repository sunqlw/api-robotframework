*** Settings ***
Documentation     该模块主要为了模拟rds抽取组件的一系列操作，包含以下接口的测试用例
...               | 接口名称 | 接口地址 |
...               | 获取数据库 | /db/show |
...               | 获取表或者视图 | /db/show/资源id/库名 |
...               | 获取字段信息 | /db/show/columns/creatable |
Resource          ../资源管理/head.robot

*** Test Cases ***
操作mysql数据库
    [Documentation]    模拟从选择资源连接、选择数据库、选择表加载字段信息，确保第一个数据库下的第一个表是可用的
    ...    | Name | 操作mysql数据库 |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-13 |
    ...    | Update | 2020-08-13 |
    # 设置参数
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    mysql
    ${pid}    Get From List    ${GLOBAL_PIDS}    0
    ${code}    ${text}    Api Res List    pageSize=1    pageNum=1    pids=${pid}    resType=${resType}
    # 获取资源id
    ${res_id}    Get Json Value    ${text}    /model/list/0/id
    # 获取数据库列表
    ${code}    ${text}    Api Db Show    ${res_id}
    # 获取数据库名
    ${model}    Get Json Value    ${text}    /model
    ${model}    To Json    ${model}
    ${db_name}    Get From List    ${model}    0
    # 获取表列表
    ${code}    ${text}    Api Table Show    ${res_id}    ${db_name}    ${pid}    1
    # 获取表名
    ${tab_dict}    Get Json Value    ${text}    /model/0/tables/0
    ${tab_dict}    To Json    ${tab_dict}
    ${tab_name}    Get From Dictionary    ${tab_dict}    name
    # 获取字段信息
    ${code}    ${text}    Api Db Show Columns    pid=${pid}    res_id=${res_id}    db_name=${db_name}    tab_name=${tab_name}    sch_name=${db_name}
    ${columns}    Get Json Value    ${text}    /model/columns
    Should Not Be Empty    ${columns}
