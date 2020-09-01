*** Settings ***
Resource          head.robot

*** Keywords ***
获取当前时间
    ${date}    Get Current Date
    ${current_date}    Get Substring    ${date}    0    -4
    Set Suite Variable    ${current_date}
    [Return]    ${current_date}

获取项目ids
    # 设置uri
    ${test_uri}    Set Variable    /datahub/leapid/projects
    # 发送请求
    ${response}    Get Request    api    ${test_uri}
    ${status_code}    Set Variable    ${response.status_code}
    ${text}    Set Variable    ${response.text}
    ${model}    Get Json Value    ${text}    /model
    ${model}    To Json    ${model}
    ${pids}    Get Dictionary Keys    ${model}
    ${GLOBAL_PIDS}    Set Variable    ${pids}
    Comment    ${GLOBAL_PIDS}    Evaluate    list(map(int,${pids}))    # 发现不需要转成int，传参
    Set Global Variable    ${GLOBAL_PIDS}

登录
    [Arguments]    ${user}    ${password}    ${proxies}=${EMPTY}
    # 创建一个会话
    create session    api    ${main_url}    proxies=${proxies}
    # 设置接口值
    ${test_uri}    Set Variable    /leapid-admin/api/v1/login
    # 设置请求参数
    &{test_params}    Create Dictionary    un=${user}    pw=${password}
    # 设置请求头
    ${headers}    Create Dictionary    Content-Type=application/x-www-form-urlencoded; charset=UTF-8
    # 发送post请求
    ${response}    Post Request    api    ${test_uri}    data=${test_params}    headers=${headers}
