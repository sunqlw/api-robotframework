*** Settings ***
Resource          ../head.robot

*** Keywords ***
Api Job Execute
    [Arguments]    ${job_id}=${EMPTY}
    [Documentation]    | Name | job execute |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-21 |
    ...    | Update | 2020-08-21 |
    ...    | *描述:* 启动任务
    ...    | *请求方式:*get
    ...    | *格式:* ${status_code} | ${text} | job execute | ${job_id}
    ...    | *输入：*
    ...    | ${job_id} | 任务id，必填
    ...    | *输出：*
    ...    | ${status_code} | 接口返回状态码
    ...    | ${text} | 接口返回消息体，json格式
    ...    | *备注：*
    ...    | 无
    #发送请求
    ${url}    Set Variable If    '${job_id}'=='${EMPTY}'    ${uri_prefix}/job/execute    ${uri_prefix}/job/execute/${job_id}
    ${response}    get Request    api    ${url}
    ${status_code}    Set Variable    ${response.status_code}
    ${text}    Set Variable    ${response.text}
    [Return]    ${status_code}    ${text}

Api Job List
    [Arguments]    ${pageNum}=A剔除    ${pageSize}=A剔除    ${pids}=A剔除    ${currentStatus}=A剔除    ${creator}=A剔除    ${jobName}=A剔除    ${id}=A剔除    ${startTimeCre}=A剔除    ${endTimeCre}=A剔除    ${startTimeExc}=A剔除    ${endTimeExc}=A剔除
    [Documentation]    | Name | job list |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-24 |
    ...    | Update | 2020-08-25 |
    ...    | *描述:* 获取任务列表
    ...    | *请求方式:*get
    ...    | *格式:* ${status_code} | ${text} | job list | ${pageNum} | ${pageSize} | ${pids} | ${currentStatus} | ${creator} | ${jobName} | ${id} | ${startTimeCre} | ${endTimeCre} | ${startTimeExc} | ${endTimeExc}
    ...    | *输入：*
    ...    | ${pageNum} | 每页条数，必填
    ...    | ${pageSize} | 页码数，必填
    ...    | ${pids} | 项目ids，必填
    ...    | ${id} | 任务id，选填
    ...    | ${currentStatus} | 最近运行状态，选填
    ...    | ${creator} | 创建人，选填，支持模糊匹配
    ...    | ${jobName} | 任务名，选填，支持模糊匹配
    ...    | ${startTimeCre} | 创建开始时间，选填
    ...    | ${endTimeCre} | 创建结束时间，选填
    ...    | ${startTimeExc} | 运行开始时间，选填
    ...    | ${endTimeExc} | 运行结束时间，选填
    ...    | *输出：*
    ...    | ${status_code} | 接口返回状态码
    ...    | ${text} | 接口返回消息体，json格式
    ...    | *备注：*
    ...    | ${currentStatus} 0表示--，2表示运行中，4表示成功，5表示失败
    # 设置参数
    &{params}    Create Dictionary    pageNum=${pageNum}    pageSize=${pageSize}    pids=${pids}    currentStatus=${currentStatus}    creator=${creator}    jobName=${jobName}    id=${id}    startTimeCre=${startTimeCre}    endTimeCre=${endTimeCre}    startTimeExc=${startTimeExc}    endTimeExc=${endTimeExc}
    &{params}    Pop Key By Str    ${params}    A剔除    # 该关键字会移除value为A剔除的key
    #发送请求
    ${response}    get Request    api    ${uri_prefix}/job/list     params=${params}
    ${status_code}    Set Variable    ${response.status_code}
    ${text}    Set Variable    ${response.text}
    [Return]    ${status_code}    ${text}
