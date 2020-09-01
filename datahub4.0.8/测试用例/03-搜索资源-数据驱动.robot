*** Settings ***
Test Template
Resource          ../资源管理/head.robot

*** Test Cases ***
按资源类型搜索mysql
    搜索资源    0    res_type=mysql

按资源类型搜索oracle
    0    \    oracle

按资源类型搜索sqlserver
    0    \    sqlserver

按资源类型搜索postgresql
    0    \    postgresql

按资源类型搜索db2
    0    \    db2

*** Keywords ***
搜索资源
    [Arguments]    ${pid_index}    ${res_name}=${EMPTY}    ${res_type}=${EMPTY}
    # 设置参数
    ${pageSize}    Set Variable    10
    ${pageNum}    Set Variable    1
    ${pids}    Get From List    ${GLOBAL_PIDS}    ${pid_index}
    ${res_type}    Run Keyword If    '${res_type}' != '${EMPTY}'    Get From Dictionary    ${GLOBAL_RES_TYPE}    ${res_type}
    Comment    ${res_type}    Get From Dictionary    ${GLOBAL_RES_TYPE}    ${res_type}
    # 发送请求
    ${code}    ${text}    Api Res List    pageSize=${pageSize}    pageNum=${pageNum}    pids=${pids}    resName=${res_name}    resType=${res_type}
    # 检查请求是否调用成功
    Should Be Equal As Integers    ${code}    200
    Should Contain    ${text}    200
    # 检查返回的结果是否全是满足搜索条件的
    ${list}    Get Json Value    ${text}    /model/list
    ${check_result}    Check Res List    ${list}    pids=${pids}    res_name=${res_name}    res_type=${resType}
    Should Be True    ${check_result}
