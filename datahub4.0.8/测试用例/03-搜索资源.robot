*** Settings ***
Documentation     该模块主要为了模拟搜索资源的操作，包含以下接口的测试用例
...               | 接口名称 | 接口地址 |
...               | 资源列表 | /res/list |
Suite Setup
Test Setup
Metadata          test1    搜索资源
Resource          ../资源管理/head.robot

*** Test Cases ***
按项目搜索
    [Documentation]    | Name | 搜索资源-按项目搜索 |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-12 |
    ...    | Update | 2020-08-12 |
    # 设置参数
    ${pageSize}    Set Variable    10
    ${pageNum}    Set Variable    1
    ${pids}    Set Variable    ${GLOBAL_PIDS}[0]
    # 发送请求
    ${code}    ${text}    Api Res List    pageSize=${pageSize}    pageNum=${pageNum}    pids=${pids}
    # 检查请求是否调用成功
    Should Be Equal As Integers    ${code}    200
    Should Contain    ${text}    200
    # 检查返回的结果是否全是满足搜索条件的
    ${list}    Get Json Value    ${text}    /model/list
    ${check_result}    Check Res List    ${list}    pids=${pids}
    Should Be True    ${check_result}

按资源名搜索
    [Documentation]    | Name | 搜索资源-按资源名搜索 |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-12 |
    ...    | Update | 2020-08-12 |
    # 设置参数
    ${pageSize}    Set Variable    10
    ${pageNum}    Set Variable    1
    ${pids}    Get From List    ${GLOBAL_PIDS}    0
    ${resName}    Set Variable    mysql
    # 发送请求
    ${code}    ${text}    Api Res List    pageSize=${pageSize}    pageNum=${pageNum}    pids=${pids}    resName=${resName}
    # 检查请求是否调用成功
    Should Be Equal As Integers    ${code}    200
    Should Contain    ${text}    200
    # 检查返回的结果是否全是满足搜索条件的
    ${list}    Get Json Value    ${text}    /model/list
    ${check_result}    Check Res List    ${list}    pids=${pids}    res_name=${resName}
    Should Be True    ${check_result}

按资源类型搜索mysql
    [Documentation]    | Name | 搜索资源-按资源类型搜索mysql |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-12 |
    ...    | Update | 2020-08-12 |
    # 设置参数
    ${pageSize}    Set Variable    10
    ${pageNum}    Set Variable    1
    ${pids}    Get From List    ${GLOBAL_PIDS}    0
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    mysql
    # 发送请求
    ${code}    ${text}    Api Res List    pageSize=${pageSize}    pageNum=${pageNum}    pids=${pids}    resType=${resType}
    # 检查请求是否调用成功
    Should Be Equal As Integers    ${code}    200
    Should Contain    ${text}    200
    # 检查返回的结果是否全是满足搜索条件的
    ${list}    Get Json Value    ${text}    /model/list
    ${check_result}    Check Res List    ${list}    pids=${pids}    res_type=${resType}
    Should Be True    ${check_result}

按资源类型搜索oracle
    [Documentation]    | Name | 搜索资源-按资源类型搜索oracle |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-12 |
    ...    | Update | 2020-08-12 |
    # 设置参数
    ${pageSize}    Set Variable    10
    ${pageNum}    Set Variable    1
    ${pids}    Get From List    ${GLOBAL_PIDS}    0
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    oracle
    # 发送请求
    ${code}    ${text}    Api Res List    pageSize=${pageSize}    pageNum=${pageNum}    pids=${pids}    resType=${resType}
    # 检查请求是否调用成功
    Should Be Equal As Integers    ${code}    200
    Should Contain    ${text}    200
    # 检查返回的结果是否全是满足搜索条件的
    ${list}    Get Json Value    ${text}    /model/list
    ${check_result}    Check Res List    ${list}    pids=${pids}    res_type=${resType}
    Should Be True    ${check_result}

按资源类型搜索sqlserver
    [Documentation]    | Name | 搜索资源-按资源类型搜索sqlserver |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-12 |
    ...    | Update | 2020-08-12 |
    # 设置参数
    ${pageSize}    Set Variable    10
    ${pageNum}    Set Variable    1
    ${pids}    Get From List    ${GLOBAL_PIDS}    0
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    sqlserver
    # 发送请求
    ${code}    ${text}    Api Res List    pageSize=${pageSize}    pageNum=${pageNum}    pids=${pids}    resType=${resType}
    # 检查请求是否调用成功
    Should Be Equal As Integers    ${code}    200
    Should Contain    ${text}    200
    # 检查返回的结果是否全是满足搜索条件的
    ${list}    Get Json Value    ${text}    /model/list
    ${check_result}    Check Res List    ${list}    pids=${pids}    res_type=${resType}
    Should Be True    ${check_result}

按资源类型搜索postgresql
    [Documentation]    | Name | 搜索资源-按资源类型搜索postgresql |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-12 |
    ...    | Update | 2020-08-12 |
    # 设置参数
    ${pageSize}    Set Variable    10
    ${pageNum}    Set Variable    1
    ${pids}    Get From List    ${GLOBAL_PIDS}    0
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    postgresql
    # 发送请求
    ${code}    ${text}    Api Res List    pageSize=${pageSize}    pageNum=${pageNum}    pids=${pids}    resType=${resType}
    # 检查请求是否调用成功
    Should Be Equal As Integers    ${code}    200
    Should Contain    ${text}    200
    # 检查返回的结果是否全是满足搜索条件的
    ${list}    Get Json Value    ${text}    /model/list
    ${check_result}    Check Res List    ${list}    pids=${pids}    res_type=${resType}
    Should Be True    ${check_result}

按资源类型搜索db2
    [Documentation]    | Name | 搜索资源-按资源类型搜索db2 |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-12 |
    ...    | Update | 2020-08-12 |
    # 设置参数
    ${pageSize}    Set Variable    10
    ${pageNum}    Set Variable    1
    ${pids}    Get From List    ${GLOBAL_PIDS}    0
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    db2
    # 发送请求
    ${code}    ${text}    Api Res List    pageSize=${pageSize}    pageNum=${pageNum}    pids=${pids}    resType=${resType}
    # 检查请求是否调用成功
    Should Be Equal As Integers    ${code}    200
    Should Contain    ${text}    200
    # 检查返回的结果是否全是满足搜索条件的
    ${list}    Get Json Value    ${text}    /model/list
    ${check_result}    Check Res List    ${list}    pids=${pids}    res_type=${resType}
    Should Be True    ${check_result}

按资源类型搜索hana
    [Documentation]    | Name | 搜索资源-按资源类型搜索hana |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-12 |
    ...    | Update | 2020-08-12 |
    # 设置参数
    ${pageSize}    Set Variable    10
    ${pageNum}    Set Variable    1
    ${pids}    Get From List    ${GLOBAL_PIDS}    0
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    hana
    # 发送请求
    ${code}    ${text}    Api Res List    pageSize=${pageSize}    pageNum=${pageNum}    pids=${pids}    resType=${resType}
    # 检查请求是否调用成功
    Should Be Equal As Integers    ${code}    200
    Should Contain    ${text}    200
    # 检查返回的结果是否全是满足搜索条件的
    ${list}    Get Json Value    ${text}    /model/list
    log    ${list}
    ${check_result}    Check Res List    ${list}    pids=${pids}    res_type=${resType}
    Should Be True    ${check_result}

按资源类型搜索hive
    [Documentation]    | Name | 搜索资源-按资源类型搜索hive |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-12 |
    ...    | Update | 2020-08-12 |
    # 设置参数
    ${pageSize}    Set Variable    10
    ${pageNum}    Set Variable    1
    ${pids}    Get From List    ${GLOBAL_PIDS}    0
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    hive
    # 发送请求
    ${code}    ${text}    Api Res List    pageSize=${pageSize}    pageNum=${pageNum}    pids=${pids}    resType=${resType}
    # 检查请求是否调用成功
    Should Be Equal As Integers    ${code}    200
    Should Contain    ${text}    200
    # 检查返回的结果是否全是满足搜索条件的
    ${list}    Get Json Value    ${text}    /model/list
    ${check_result}    Check Res List    ${list}    pids=${pids}    res_type=${resType}
    Should Be True    ${check_result}

按资源类型搜索hdfs
    [Documentation]    | Name | 搜索资源-按资源类型搜索hdfs |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-12 |
    ...    | Update | 2020-08-12 |
    # 设置参数
    ${pageSize}    Set Variable    10
    ${pageNum}    Set Variable    1
    ${pids}    Set Variable    ${GLOBAL_PIDS}[0],0
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    hdfs
    # 发送请求
    ${code}    ${text}    Api Res List    pageSize=${pageSize}    pageNum=${pageNum}    pids=${pids}    resType=${resType}
    # 检查请求是否调用成功
    Should Be Equal As Integers    ${code}    200
    Should Contain    ${text}    200
    # 检查返回的结果是否全是满足搜索条件的
    ${list}    Get Json Value    ${text}    /model/list
    ${check_result}    Check Res List    ${list}    pids=${pids}    res_type=${resType}
    Should Be True    ${check_result}

按资源类型搜索hbase
    [Documentation]    | Name | 搜索资源-按资源类型搜索hbase |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-12 |
    ...    | Update | 2020-08-12 |
    # 设置参数
    ${pageSize}    Set Variable    10
    ${pageNum}    Set Variable    1
    ${pids}    Get From List    ${GLOBAL_PIDS}    0
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    hbase
    # 发送请求
    ${code}    ${text}    Api Res List    pageSize=${pageSize}    pageNum=${pageNum}    pids=${pids}    resType=${resType}
    # 检查请求是否调用成功
    Should Be Equal As Integers    ${code}    200
    Should Contain    ${text}    200
    # 检查返回的结果是否全是满足搜索条件的
    ${list}    Get Json Value    ${text}    /model/list
    ${check_result}    Check Res List    ${list}    pids=${pids}    res_type=${resType}
    Should Be True    ${check_result}

按资源类型搜索ftp
    [Documentation]    | Name | 搜索资源-按资源类型搜索ftp |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-12 |
    ...    | Update | 2020-08-12 |
    # 设置参数
    ${pageSize}    Set Variable    10
    ${pageNum}    Set Variable    1
    ${pids}    Get From List    ${GLOBAL_PIDS}    0
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    ftp
    # 发送请求
    ${code}    ${text}    Api Res List    pageSize=${pageSize}    pageNum=${pageNum}    pids=${pids}    resType=${resType}
    # 检查请求是否调用成功
    Should Be Equal As Integers    ${code}    200
    Should Contain    ${text}    200
    # 检查返回的结果是否全是满足搜索条件的
    ${list}    Get Json Value    ${text}    /model/list
    ${check_result}    Check Res List    ${list}    pids=${pids}    res_type=${resType}
    Should Be True    ${check_result}

按资源类型搜索s3
    [Documentation]    | Name | 搜索资源-按资源类型搜索s3 |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-12 |
    ...    | Update | 2020-08-12 |
    # 设置参数
    ${pageSize}    Set Variable    10
    ${pageNum}    Set Variable    1
    ${pids}    Get From List    ${GLOBAL_PIDS}    0
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    s3
    # 发送请求
    ${code}    ${text}    Api Res List    pageSize=${pageSize}    pageNum=${pageNum}    pids=${pids}    resType=${resType}
    # 检查请求是否调用成功
    Should Be Equal As Integers    ${code}    200
    Should Contain    ${text}    200
    # 检查返回的结果是否全是满足搜索条件的
    ${list}    Get Json Value    ${text}    /model/list
    ${check_result}    Check Res List    ${list}    pids=${pids}    res_type=${resType}
    Should Be True    ${check_result}

资源名传空验证
    # 设置参数
    ${pageSize}    Set Variable    10
    ${pageNum}    Set Variable    1
    ${pids}    Set Variable    ${GLOBAL_PIDS}[0]
    &{params}    Create Dictionary    pageSize=${pageSize}    pageNum=${pageNum}    pids=${pids}    resName=${EMPTY}
    # 发送请求
    ${code}    ${text}    Api Res List    &{params}
    # 检查请求是否调用成功
    Should Be Equal As Integers    ${code}    200
    Should Contain    ${text}    200
    # 检查返回的结果是否全是满足搜索条件的
    ${list}    Get Json Value    ${text}    /model/list
    ${check_result}    Check Res List    ${list}    pids=${pids}
    Should Be True    ${check_result}
    Should Not Be Equal    ${list}    []

资源类型传空验证
    # 设置参数
    ${pageSize}    Set Variable    10
    ${pageNum}    Set Variable    1
    ${pids}    Set Variable    ${GLOBAL_PIDS}[0]
    &{params}    Create Dictionary    pageSize=${pageSize}    pageNum=${pageNum}    pids=${pids}    resType=${EMPTY}
    # 发送请求
    ${code}    ${text}    Api Res List    &{params}
    # 检查请求是否调用成功
    Should Be Equal As Integers    ${code}    200
    Should Contain    ${text}    200
    # 检查返回的结果是否全是满足搜索条件的
    ${list}    Get Json Value    ${text}    /model/list
    ${check_result}    Check Res List    ${list}    pids=${pids}
    Should Be True    ${check_result}
    Should Not Be Equal    ${list}    []

项目id传空
    # 设置参数
    ${pageSize}    Set Variable    10
    ${pageNum}    Set Variable    1
    ${pids}    Set Variable    ${GLOBAL_PIDS}[0]
    &{params}    Create Dictionary    pageSize=${pageSize}    pageNum=${pageNum}
    # 发送请求
    ${code}    ${text}    Api Res List    &{params}
    # 检查请求是否调用成功
    Should Be Equal As Integers    ${code}    200
    Should Contain    ${text}    200
    # 检查返回的结果是否全是满足搜索条件的
    ${list}    Get Json Value    ${text}    /model/list
    ${check_result}    Check Res List    ${list}    pids=${pids}
    Should Be True    ${check_result}
    Should Not Be Equal    ${list}    []
