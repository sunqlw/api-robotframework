*** Settings ***
Resource          ../head.robot

*** Keywords ***
Api Db Show
    [Arguments]    ${res_id}
    [Documentation]    | Name | db show |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-13 |
    ...    | Update | 2020-08-13 |
    ...    | *描述:* 获取数据库列表
    ...    | *请求方式:*get
    ...    | *格式:* ${status_code} | ${text} | db show | ${res_id}
    ...    | *输入：*
    ...    | ${res_id} | 资源id，必填
    ...    | *输出：*
    ...    | ${status_code} | 接口返回状态码
    ...    | ${text} | 接口返回消息体，json格式
    ...    | *备注：*
    ...    | 无
    #发送请求
    ${response}    get Request    api    ${uri_prefix}/db/show/${res_id}
    ${status_code}    Set Variable    ${response.status_code}
    ${text}    Set Variable    ${response.text}
    [Return]    ${status_code}    ${text}

Api Table Show
    [Arguments]    ${res_id}    ${db_name}    ${pid}    ${tab_type}
    [Documentation]    | Name | table show |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-13 |
    ...    | Update | 2020-08-13 |
    ...    | *描述:* 获取某个数据库下的表或视图
    ...    | *请求方式:*get
    ...    | *格式:* ${status_code} | ${text} | table show | ${res_id} | ${db_name} | ${pid} | ${tab_type}
    ...    | *输入：*
    ...    | ${res_id} | 资源id，必填
    ...    | ${db_name} | 数据库名，必填
    ...    | ${pid} | 项目id，必填
    ...    | ${tab_type} | 表类型，必填
    ...    | *输出：*
    ...    | ${status_code} | 接口返回状态码
    ...    | ${text} | 接口返回消息体，json格式
    ...    | *备注：*
    ...    | ${tab_type} | 1表示表，2表示视图
    # 设置参数
    &{params}    Create Dictionary    tabType=${tab_type}    pid=${pid}
    &{params}    Pop Key By Empty    ${params}    # 该关键字会移除value为空的key
    #发送请求
    ${response}    get Request    api    ${uri_prefix}/db/show/${res_id}/${db_name}    params=${params}
    ${status_code}    Set Variable    ${response.status_code}
    ${text}    Set Variable    ${response.text}
    [Return]    ${status_code}    ${text}

Api Db Show Columns
    [Arguments]    ${pid}=${EMPTY}    ${res_id}=${EMPTY}    ${db_name}=${EMPTY}    ${based_columns}=${EMPTY}    ${tab_name}=${EMPTY}    ${sch_name}=${EMPTY}
    # 设置参数
    &{data}    Create Dictionary    pid=${pid}    resId=${res_id}    dbName=${db_name}    basedColumns=${based_columns}    tabName=${tab_name}    schName=${sch_name}
    &{data}    Pop Key By Empty    ${data}    # 该关键字会移除value为空的key
    # 设置请求头
    ${headers}    Create Dictionary    Content-Type=application/x-www-form-urlencoded
    #发送请求
    ${response}    Post Request    api    ${uri_prefix}/db/show/columns/creatable    data=${data}    headers=${headers}
    ${status_code}    Set Variable    ${response.status_code}
    ${text}    Set Variable    ${response.text}
    [Return]    ${status_code}    ${text}
