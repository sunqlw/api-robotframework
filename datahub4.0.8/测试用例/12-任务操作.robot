*** Settings ***
Resource          ../资源管理/head.robot

*** Test Cases ***
启动完整任务
    [Tags]    skip

启动任务ID不存在的任务
    [Tags]    skip    bug
    # 设置任务ID
    ${job_id}    Set Variable    10000
    # 发送请求
    ${code}    ${text}    Api Job Execute    ${job_id}
    # 返回结果检查
    Should Be Equal As Integers    ${code}    200
    Should Contain    ${text}    0
    Should Contain    ${text}    任务ID不存在

启动草稿任务
    [Tags]    skip

启动没有权限的任务
    [Tags]    skip    bug
    # 设置任务ID
    ${job_id}    Set Variable    43
    # 发送请求
    ${code}    ${text}    Api Job Execute    ${job_id}
    Should Be Equal As Integers    ${code}    200
    Should Contain    ${text}    0
    Should Contain    ${text}    没有项目权限

启动任务不传任务ID
    # 发送请求
    ${code}    ${text}    Api Job Execute
    # 返回值检查
    Should Be Equal As Integers    ${code}    404

启动任务任务ID传入非法字符
    # 设置任务ID
    ${job_id}    Set Variable    test
    # 发送请求
    ${code}    ${text}    Api Job Execute    ${job_id}
    # 返回值检查
    Should Be Equal As Integers    ${code}    400
