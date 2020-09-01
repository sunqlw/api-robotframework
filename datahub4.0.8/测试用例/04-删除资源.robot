*** Settings ***
Resource          ../资源管理/head.robot

*** Test Cases ***
删除非自己项目下的资源
    # 设置参数
    ${res_id}    Set Variable    10331
    ${pid}    Get From List    ${GLOBAL_PIDS}    0
    # 发送请求
    ${code}    ${text}    Api Res Delete    res_id=${res_id}
