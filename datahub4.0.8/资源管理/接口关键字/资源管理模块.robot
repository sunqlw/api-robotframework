*** Settings ***
Resource          ../head.robot

*** Keywords ***
Api Res Add
    [Arguments]    ${host}=A剔除    ${port}=A剔除    ${url}=A剔除    ${user}=A剔除    ${password}=A剔除    ${resName}=A剔除    ${pid}=A剔除    ${resType}=A剔除    ${params}=A剔除    ${otherParams}=A剔除    ${maxConnectionSize}=A剔除
    # 拼凑参数
    &{data}    Create Dictionary    pid=${pid}    resType=${resType}    resName=${resName}    host=${host}    port=${port}    url=${url}    user=${user}    password=${password}    params=${params}    otherParams=${otherParams}    maxConnectionSize=${maxConnectionSize}
    &{data}    Pop Key By Str    ${data}    A剔除    # 该关键字会移除value为A剔除的key
    # 设置请求头
    ${headers}    Create Dictionary    Content-Type=application/x-www-form-urlencoded
    #发送请求
    ${response}    Post Request    api    ${uri_prefix}/res/add    data=&{data}    headers=${headers}
    ${status_code}    Set Variable    ${response.status_code}
    ${text}    Set Variable    ${response.text}
    [Return]    ${status_code}    ${text}

Api Res File Upload
    [Arguments]    ${file_name}    ${file_path}    ${file_type}
    ${file_tup}    Evaluate    ($file_name,open($file_path),$file_type)
    &{file}    Create Dictionary    file=${file_tup}
    #发送请求
    ${response}    Post Request    api    ${uri_prefix}/res/file/upload    files=${file}
    ${status_code}    Set Variable    ${response.status_code}
    ${text}    Set Variable    ${response.text}
    [Return]    ${status_code}    ${text}

Api Res List
    [Arguments]    ${pageNum}=A剔除    ${pageSize}=A剔除    ${pids}=A剔除    ${resType}=A剔除    ${resName}=A剔除
    #设置请求uri
    ${params}    Create Dictionary    pids=${pids}    pageNum=${pageNum}    pageSize=${pageSize}    resType=${resType}    resName=${resName}
    &{params}    Pop Key By Str    ${params}    A剔除    # 该关键字会移除value为A剔除的key
    #发送请求
    ${response}    get Request    api    ${uri_prefix}/res/list    params=${params}
    ${status_code}    Set Variable    ${response.status_code}
    ${text}    Set Variable    ${response.text}
    [Return]    ${status_code}    ${text}

Check Add Res Successful
    [Arguments]    ${code}    ${text}    ${resName}
    Should Be Equal As Integers    ${code}    200
    Should Contain    ${text}    200
    Should Contain    ${text}    ${resName}

Api Common Select Regions
    #发送请求
    ${response}    get Request    api    ${uri_prefix}/common/select/regions
    ${status_code}    Set Variable    ${response.status_code}
    ${text}    Set Variable    ${response.text}
    [Return]    ${status_code}    ${text}

Api Res Params
    [Arguments]    ${resType}=A剔除
    #设置请求uri
    ${params}    Create Dictionary    resType=${resType}
    &{params}    Pop Key By Str    ${params}    A剔除    # 该关键字会移除value为A剔除的key
    #发送请求
    ${response}    get Request    api    ${uri_prefix}/res/params    params=${params}
    ${status_code}    Set Variable    ${response.status_code}
    ${text}    Set Variable    ${response.text}
    [Return]    ${status_code}    ${text}

Api Res Delete
    [Arguments]    ${res_id}=A剔除    ${pid}=A剔除
    #设置请求uri
    ${params}    Create Dictionary    id=${res_id}    pids=${pid}
    &{params}    Pop Key By Str    ${params}    A剔除    # 该关键字会移除value为A剔除的key
    #发送请求
    ${response}    Delete Request    api    ${uri_prefix}/res/delete    params=${params}
    ${status_code}    Set Variable    ${response.status_code}
    ${text}    Set Variable    ${response.text}
    [Return]    ${status_code}    ${text}
