*** Settings ***
Documentation     该模块主要为了模拟新建资源的操作，包含以下接口的测试用例
...               | 接口名称 | 接口地址 |
...               | 新建资源 | /res/add |
...               | 资源列表 | /res/list |
...               | 资源系统参数 | /res/params |
...               | 获取s3的regions | /common/select/regions |
Suite Setup       获取当前时间
Resource          ../资源管理/head.robot

*** Test Cases ***
新建mysql资源
    [Documentation]    | Name | 新建mysql资源 |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-12 |
    ...    | Update | 2020-08-12 |
    [Tags]    smoke
    # 设置参数
    ${host}    Get From Dictionary    ${mysql_params}    host
    ${url}    Get From Dictionary    ${mysql_params}    url
    ${port}    Get From Dictionary    ${mysql_params}    port
    ${user}    Get From Dictionary    ${mysql_params}    user
    ${password}    Get From Dictionary    ${mysql_params}    password
    ${params}    Get From Dictionary    ${mysql_params}    params
    ${otherParams}    Get From Dictionary    ${mysql_params}    otherParams
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    mysql
    ${pid}    Get From List    ${GLOBAL_PIDS}    0
    ${resName}    Set Variable    mysql_byrf_${current_date}
    ${maxConnectionSize}    Set Variable    20
    &{data_dic}    Create Dictionary    host=${host}    url=${url}    port=${port}    user=${user}    password=${password}    resName=${resName}    pid=${pid}    resType=${resType}    maxConnectionSize=${maxConnectionSize}    params=${params}    otherParams=${otherParams}
    ${code}    ${text}    Api Res Add    &{data_dic}
    # 检查请求是否调用成功
    Check Add Res Successful    ${code}    ${text}    ${resName}

新建oracle资源
    [Documentation]    | Name | 新建oracle资源 |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-12 |
    ...    | Update | 2020-08-12 |
    [Tags]    smoke
    # 设置参数
    ${host}    Get From Dictionary    ${oracleParams}    host
    ${url}    Get From Dictionary    ${oracleParams}    url
    ${port}    Get From Dictionary    ${oracleParams}    port
    ${user}    Get From Dictionary    ${oracleParams}    user
    ${password}    Get From Dictionary    ${oracleParams}    password
    ${params}    Get From Dictionary    ${oracleParams}    params
    ${otherParams}    Get From Dictionary    ${oracleParams}    otherParams
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    oracle
    ${pid}    Get From List    ${GLOBAL_PIDS}    0
    ${resName}    Set Variable    oracle_byrf_${current_date}
    ${maxConnectionSize}    Set Variable    20
    ${code}    ${text}    Api Res Add    host=${host}    url=${url}    port=${port}    user=${user}    password=${password}    resName=${resName}    pid=${pid}    resType=${resType}    maxConnectionSize=${maxConnectionSize}    params=${params}    otherParams=${otherParams}
    # 检查请求是否调用成功
    Check Add Res Successful    ${code}    ${text}    ${resName}

新建sqlserver资源
    [Documentation]    | Name | 新建sqlserver资源 |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-12 |
    ...    | Update | 2020-08-12 |
    [Tags]    smoke
    # 设置参数
    ${host}    Get From Dictionary    ${sqlserverParams}    host
    ${url}    Get From Dictionary    ${sqlserverParams}    url
    ${port}    Get From Dictionary    ${sqlserverParams}    port
    ${user}    Get From Dictionary    ${sqlserverParams}    user
    ${password}    Get From Dictionary    ${sqlserverParams}    password
    ${params}    Get From Dictionary    ${sqlserverParams}    params
    ${otherParams}    Get From Dictionary    ${sqlserverParams}    otherParams
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    sqlserver
    ${pid}    Get From List    ${GLOBAL_PIDS}    0
    ${resName}    Set Variable    sqlserver_byrf_${current_date}
    ${maxConnectionSize}    Set Variable    20
    ${code}    ${text}    Api Res Add    host=${host}    url=${url}    port=${port}    user=${user}    password=${password}    resName=${resName}    pid=${pid}    resType=${resType}    maxConnectionSize=${maxConnectionSize}    params=${params}    otherParams=${otherParams}
    # 检查请求是否调用成功
    Check Add Res Successful    ${code}    ${text}    ${resName}

新建postgresql资源
    [Documentation]    | Name | 新建postgresql资源 |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-12 |
    ...    | Update | 2020-08-12 |
    [Tags]    smoke
    # 设置参数
    ${host}    Get From Dictionary    ${postgresqlParams}    host
    ${url}    Get From Dictionary    ${postgresqlParams}    url
    ${port}    Get From Dictionary    ${postgresqlParams}    port
    ${user}    Get From Dictionary    ${postgresqlParams}    user
    ${password}    Get From Dictionary    ${postgresqlParams}    password
    ${params}    Get From Dictionary    ${postgresqlParams}    params
    ${otherParams}    Get From Dictionary    ${postgresqlParams}    otherParams
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    postgresql
    ${pid}    Get From List    ${GLOBAL_PIDS}    0
    ${resName}    Set Variable    postgresql_byrf_${current_date}
    ${maxConnectionSize}    Set Variable    20
    ${code}    ${text}    Api Res Add    host=${host}    url=${url}    port=${port}    user=${user}    password=${password}    resName=${resName}    pid=${pid}    resType=${resType}    maxConnectionSize=${maxConnectionSize}    params=${params}    otherParams=${otherParams}
    # 检查请求是否调用成功
    Check Add Res Successful    ${code}    ${text}    ${resName}

新建db2资源
    [Documentation]    | Name | 新建db2资源 |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-12 |
    ...    | Update | 2020-08-12 |
    [Tags]    smoke
    # 设置参数
    ${host}    Get From Dictionary    ${db2Params}    host
    ${url}    Get From Dictionary    ${db2Params}    url
    ${port}    Get From Dictionary    ${db2Params}    port
    ${user}    Get From Dictionary    ${db2Params}    user
    ${password}    Get From Dictionary    ${db2Params}    password
    ${params}    Get From Dictionary    ${db2Params}    params
    ${otherParams}    Get From Dictionary    ${db2Params}    otherParams
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    db2
    ${pid}    Get From List    ${GLOBAL_PIDS}    0
    ${resName}    Set Variable    db2_byrf_${current_date}
    ${maxConnectionSize}    Set Variable    20
    ${code}    ${text}    Api Res Add    host=${host}    url=${url}    port=${port}    user=${user}    password=${password}    resName=${resName}    pid=${pid}    resType=${resType}    maxConnectionSize=${maxConnectionSize}    params=${params}    otherParams=${otherParams}
    # 检查请求是否调用成功
    Check Add Res Successful    ${code}    ${text}    ${resName}

新建hana资源
    [Documentation]    | Name | 新建hana资源 |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-12 |
    ...    | Update | 2020-08-12 |
    [Tags]    skip    无环境
    [Setup]
    # 设置参数
    ${host}    Set Variable    172.17.202.145
    ${url}    Set Variable    jdbc:mysql://172.17.202.145:3306
    ${port}    Set Variable    3306
    ${user}    Set Variable    datahub
    ${password}    Set Variable    datahub
    ${resName}    Set Variable    hana_byrf_${current_date}
    ${pid}    Get From List    ${GLOBAL_PIDS}    0
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    hana
    ${maxConnectionSize}    Set Variable    20
    ${params}    Set Variable    []
    ${otherParams}    Set Variable    {}
    ${code}    ${text}    Api Res Add    host=${host}    url=${url}    port=${port}    user=${user}    password=${password}    resName=${resName}    pid=${pid}    resType=${resType}    maxConnectionSize=${maxConnectionSize}    params=${params}    otherParams=${otherParams}
    # 检查请求是否调用成功
    Check Add Res Successful    ${code}    ${text}    ${resName}

新建ftp资源-ftp协议
    [Documentation]    | Name | 新建ftp资源-ftp协议 |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-12 |
    ...    | Update | 2020-08-12 |
    [Tags]    smoke
    #设置参数
    ${params}    Get From Dictionary    ${ftpParams}    params
    ${otherParams}    Get From Dictionary    ${ftpParams}    otherParams
    ${host}    Get From Dictionary    ${ftpParams}    host
    ${port}    Get From Dictionary    ${ftpParams}    port
    ${url}    Get From Dictionary    ${ftpParams}    url
    ${user}    Get From Dictionary    ${ftpParams}    user
    ${password}    Get From Dictionary    ${ftpParams}    password
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    ftp
    ${pid}    Get From List    ${GLOBAL_PIDS}    0
    ${resName}    Set Variable    ftp-ftp协议-byrf-${current_date}
    ${maxConnectionSize}    Set Variable    20
    #发送请求
    ${code}    ${text}    Api Res Add    pid=${pid}    resType=${resType}    resName=${resName}    params=${params}    otherParams=${otherParams}    host=${host}    port=${port}    url=${url}    user=${user}    password=${password}    maxConnectionSize=${maxConnectionSize}
    # 检查请求是否调用成功
    Check Add Res Successful    ${code}    ${text}    ${resName}

新建ftp资源-sftp协议
    [Documentation]    | Name | 新建ftp资源-sftp协议 |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-12 |
    ...    | Update | 2020-08-12 |
    [Tags]    smoke
    #设置参数
    ${params}    Get From Dictionary    ${sftpParams}    params
    ${otherParams}    Get From Dictionary    ${sftpParams}    otherParams
    ${host}    Get From Dictionary    ${sftpParams}    host
    ${port}    Get From Dictionary    ${sftpParams}    port
    ${url}    Get From Dictionary    ${sftpParams}    url
    ${user}    Get From Dictionary    ${sftpParams}    user
    ${password}    Get From Dictionary    ${sftpParams}    password
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    ftp
    ${pid}    Get From List    ${GLOBAL_PIDS}    0
    ${resName}    Set Variable    ftp-sftp协议-byrf-${current_date}
    ${maxConnectionSize}    Set Variable    20
    #发送请求
    ${code}    ${text}    Api Res Add    pid=${pid}    resType=${resType}    resName=${resName}    params=${params}    otherParams=${otherParams}    host=${host}    port=${port}    url=${url}    user=${user}    password=${password}    maxConnectionSize=${maxConnectionSize}
    # 检查请求是否调用成功
    Check Add Res Successful    ${code}    ${text}    ${resName}

新建s3资源
    [Documentation]    | Name | 新建s3资源 |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-12 |
    ...    | Update | 2020-08-12 |
    [Tags]    smoke
    #设置参数
    ${params}    Get From Dictionary    ${s3Params}    params
    ${otherParams}    Get From Dictionary    ${s3Params}    otherParams
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    s3
    ${pid}    Get From List    ${GLOBAL_PIDS}    0
    ${resName}    Set Variable    s3-byrf-${current_date}
    ${maxConnectionSize}    Set Variable    20
    #发送请求
    ${code}    ${text}    Api Res Add    pid=${pid}    resType=${resType}    resName=${resName}    params=${params}    otherParams=${otherParams}    maxConnectionSize=${maxConnectionSize}
    # 检查请求是否调用成功
    Check Add Res Successful    ${code}    ${text}    ${resName}

新建hdfs资源
    [Documentation]    | Name | 新建hdfs资源 |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-12 |
    ...    | Update | 2020-08-12 |
    [Tags]    smoke
    #设置文件路径
    ${core_filePath}    Set Variable    ${CURDIR}${/}测试数据${/}hdfs${/}${env}${/}core-site.xml
    ${hdfs_filePath}    Set Variable    ${CURDIR}${/}测试数据${/}hdfs${/}${env}${/}hdfs-site.xml
    ${code}    ${text}    Api Res File Upload    file_name=core-site.xml    file_path=${core_filePath}    file_type=text/xml
    ${upload_core}    Get Json Value    ${text}    /model
    ${code}    ${text}    Api Res File Upload    file_name=hdfs-site.xml    file_path=${hdfs_filePath}    file_type=text/xml
    ${upload_hdfs}    Get Json Value    ${text}    /model
    #设置参数
    ${pid}    Get From List    ${GLOBAL_PIDS}    0
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    hdfs
    ${otherParams}    Set Variable    {"authType":"1","coreSiteXml":${upload_core},"hdfsSiteXml":${upload_hdfs}}
    ${params}    Set Variable    [{"name":"authType","value":"1","extend":false},{"name":"coreSiteXml","value":${upload_core},"extend":false},{"name":"hdfsSiteXml","value":${upload_hdfs},"extend":false}]
    ${user}    Set Variable    hdfs
    ${resName}    Set Variable    hdfs-byrf-${current_date}
    #发送请求
    ${code}    ${text}    Api Res Add    pid=${pid}    resType=${resType}    resName=${resName}    params=${params}    otherParams=${otherParams}    user=${user}
    #返回结果检查
    Check Add Res Successful    ${code}    ${text}    ${resName}

新建hive资源-普通模式
    [Documentation]    | Name | 新建hive资源-普通模式 |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-12 |
    ...    | Update | 2020-08-12 |
    [Tags]    smoke
    # 设置参数
    ${host}    Set Variable    demo201.test.com
    ${url}    Set Variable    jdbc:hive2://demo201.test.com:10000
    ${port}    Set Variable    10000
    ${user}    Set Variable    hive
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    hive
    ${pid}    Get From List    ${GLOBAL_PIDS}    0
    ${resName}    Set Variable    hive-普通模式-byrf-${current_date}
    ${maxConnectionSize}    Set Variable    20
    # 获取hdfs资源的id
    ${code}    ${text}    Api Res List    pageSize=1    pageNum=1    pids=${pid}    resType=${GLOBAL_RES_TYPE}[hdfs]
    ${hdfs_id}    Get Json Value    ${text}    /model/list/0/id
    ${params}    Set Variable    [{"name":"hid","value":${hdfs_id},"extend":false},{"name":"zooKeeperNamespace","value":"","extend":false},{"name":"serviceMode","value":"0","extend":false}]
    ${otherParams}    Set Variable    {"hid":${hdfs_id},"zooKeeperNamespace":"","serviceMode":"0","zookeeperAddr":[{"value":""}]}
    ${code}    ${text}    Api Res Add    host=${host}    url=${url}    port=${port}    user=${user}    resName=${resName}    pid=${pid}    resType=${resType}    maxConnectionSize=${maxConnectionSize}    params=${params}    otherParams=${otherParams}
    # 检查请求是否调用成功
    Check Add Res Successful    ${code}    ${text}    ${resName}

新建hive资源-HA模式
    [Documentation]    | Name | 新建hive资源-HA模式 |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-12 |
    ...    | Update | 2020-08-12 |
    [Tags]    smoke
    # 设置参数
    ${host}    Set Variable    demo201.test.com,demo200.test.com
    ${url}    Set Variable    jdbc:hive2://demo201.test.com:2181,demo200.test.com:2181
    ${port}    Set Variable    2181
    ${user}    Set Variable    hive
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    hive
    ${pid}    Get From List    ${GLOBAL_PIDS}    0
    ${resName}    Set Variable    hive-HA模式-byrf-${current_date}
    ${maxConnectionSize}    Set Variable    20
    # 获取hdfs资源的id
    ${code}    ${text}    Api Res List    pageSize=1    pageNum=1    pids=${pid}    resType=${GLOBAL_RES_TYPE}[hdfs]
    ${hdfs_id}    Get Json Value    ${text}    /model/list/0/id
    ${params}    Set Variable    [{"name":"hid","value":${hdfs_id},"extend":false},{"name":"serviceMode","value":"1","extend":false},{"name":"zooKeeperNamespace","value":"hiveserver2","extend":false}]
    ${otherParams}    Set Variable    {"hid":${hdfs_id},"serviceMode":"1","zookeeperAddr":[{"value":"demo201.test.com"},{"value":"demo200.test.com"}],"zooKeeperNamespace":"hiveserver2"}
    ${code}    ${text}    Api Res Add    host=${host}    url=${url}    port=${port}    user=${user}    resName=${resName}    pid=${pid}    resType=${resType}    maxConnectionSize=${maxConnectionSize}    params=${params}    otherParams=${otherParams}
    # 检查请求是否调用成功
    Check Add Res Successful    ${code}    ${text}    ${resName}

新建hbase资源-单zk地址
    [Documentation]    | Name | 新建hbase资源-单zk模式 |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-12 |
    ...    | Update | 2020-08-12 |
    [Tags]    smoke
    # 设置参数
    ${host}    Set Variable    demo200.test.com
    ${port}    Set Variable    2181
    ${user}    Set Variable    hbase
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    hbase
    ${pid}    Get From List    ${GLOBAL_PIDS}    0
    ${resName}    Set Variable    hbase-单zk地址-byrf-${current_date}
    ${maxConnectionSize}    Set Variable    20
    ${params}    Set Variable    [{"name":"znode","value":"/hbase-unsecure","extend":false}]
    ${otherParams}    Set Variable    {"znode":"/hbase-unsecure","zookeeperAddr":[{"value":"demo200.test.com"}]}
    ${code}    ${text}    Api Res Add    host=${host}    port=${port}    user=${user}    resName=${resName}    pid=${pid}    resType=${resType}    maxConnectionSize=${maxConnectionSize}    params=${params}    otherParams=${otherParams}
    # 检查请求是否调用成功
    Check Add Res Successful    ${code}    ${text}    ${resName}

新建hbase资源-多zk地址
    [Documentation]    | Name | 新建hbase资源-多zk模式 |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-12 |
    ...    | Update | 2020-08-12 |
    [Tags]    smoke
    # 设置参数
    ${host}    Set Variable    demo200.test.com,demo201.test.com,demo202.test.com
    ${port}    Set Variable    2181
    ${user}    Set Variable    hbase
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    hbase
    ${pid}    Get From List    ${GLOBAL_PIDS}    0
    ${resName}    Set Variable    hbase-多zk地址-byrf-${current_date}
    ${maxConnectionSize}    Set Variable    20
    ${params}    Set Variable    [{"name":"znode","value":"/hbase-unsecure","extend":false}]
    ${otherParams}    Set Variable    {"znode":"/hbase-unsecure","zookeeperAddr":[{"value":"demo200.test.com"},{"value":"demo201.test.com"},{"value":"demo202.test.com"}]}
    ${code}    ${text}    Api Res Add    host=${host}    port=${port}    user=${user}    resName=${resName}    pid=${pid}    resType=${resType}    maxConnectionSize=${maxConnectionSize}    params=${params}    otherParams=${otherParams}
    # 检查请求是否调用成功
    Check Add Res Successful    ${code}    ${text}    ${resName}

新建资源host为空
    [Tags]    skip
    log    test1

新建资源port为空
    [Tags]    skip
    log    test1

新建资源url为空
    [Tags]    skip
    log    test1

新建资源pid为空
    # 设置参数
    ${host}    Get From Dictionary    ${mysql_params}    host
    ${url}    Get From Dictionary    ${mysql_params}    url
    ${port}    Get From Dictionary    ${mysql_params}    port
    ${user}    Get From Dictionary    ${mysql_params}    user
    ${password}    Get From Dictionary    ${mysql_params}    password
    ${params}    Get From Dictionary    ${mysql_params}    params
    ${otherParams}    Get From Dictionary    ${mysql_params}    otherParams
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    mysql
    ${resName}    Set Variable    mysql资源-pid为空-${current_date}
    ${maxConnectionSize}    Set Variable    20
    ${code}    ${text}    Api Res Add    host=${host}    url=${url}    port=${port}    user=${user}    password=${password}    resName=${resName}    resType=${resType}    maxConnectionSize=${maxConnectionSize}    params=${params}    otherParams=${otherParams}
    # 检查请求是否调用成功
    Should Be Equal As Integers    ${code}    200
    Should Contain    ${text}    0
    Should Contain    ${text}    Permissions check failed: is not member of project

新建资源pid为不存在的
    # 设置参数
    ${host}    Get From Dictionary    ${mysql_params}    host
    ${url}    Get From Dictionary    ${mysql_params}    url
    ${port}    Get From Dictionary    ${mysql_params}    port
    ${user}    Get From Dictionary    ${mysql_params}    user
    ${password}    Get From Dictionary    ${mysql_params}    password
    ${params}    Get From Dictionary    ${mysql_params}    params
    ${otherParams}    Get From Dictionary    ${mysql_params}    otherParams
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    mysql
    ${pid}    Set Variable    10000
    ${resName}    Set Variable    mysql资源-pid不存在-${current_date}
    ${maxConnectionSize}    Set Variable    20
    ${code}    ${text}    Api Res Add    host=${host}    url=${url}    port=${port}    user=${user}    password=${password}    resName=${resName}    pid=${pid}    resType=${resType}    maxConnectionSize=${maxConnectionSize}    params=${params}    otherParams=${otherParams}
    # 检查请求是否调用成功
    Should Be Equal As Integers    ${code}    200
    Should Contain    ${text}    0
    Should Contain    ${text}    Permissions check failed: is not member of project

新建资源pid为没权限的
    # 设置参数
    ${host}    Get From Dictionary    ${mysql_params}    host
    ${url}    Get From Dictionary    ${mysql_params}    url
    ${port}    Get From Dictionary    ${mysql_params}    port
    ${user}    Get From Dictionary    ${mysql_params}    user
    ${password}    Get From Dictionary    ${mysql_params}    password
    ${params}    Get From Dictionary    ${mysql_params}    params
    ${otherParams}    Get From Dictionary    ${mysql_params}    otherParams
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    mysql
    ${pid}    Set Variable    46
    ${resName}    Set Variable    mysql资源-pid没权限-${current_date}
    ${maxConnectionSize}    Set Variable    20
    ${code}    ${text}    Api Res Add    host=${host}    url=${url}    port=${port}    user=${user}    password=${password}    resName=${resName}    pid=${pid}    resType=${resType}    maxConnectionSize=${maxConnectionSize}    params=${params}    otherParams=${otherParams}
    # 检查请求是否调用成功
    Should Be Equal As Integers    ${code}    200
    Should Contain    ${text}    0
    Should Contain    ${text}    Permissions check failed: is not member of project

系统资源参数检查
    # mysql系统参数检查
    ${res_type}    Get From Dictionary    ${GLOBAL_RES_TYPE}    mysql
    ${code}    ${text}    Api Res Params    ${res_type}
    Should Contain    ${text}    字符集
    # oracle系统参数检查
    ${res_type}    Get From Dictionary    ${GLOBAL_RES_TYPE}    oracle
    ${code}    ${text}    Api Res Params    ${res_type}
    Should Contain    ${text}    读取超时(毫秒)
    # db2系统参数检查
    ${res_type}    Get From Dictionary    ${GLOBAL_RES_TYPE}    db2
    ${code}    ${text}    Api Res Params    ${res_type}
    Should Contain    ${text}    Session时间区域
    # db2系统参数检查
    ${res_type}    Get From Dictionary    ${GLOBAL_RES_TYPE}    postgresql
    ${code}    ${text}    Api Res Params    ${res_type}
    Should Contain    ${text}    日志不关闭连接
    # hive系统参数检查
    ${res_type}    Get From Dictionary    ${GLOBAL_RES_TYPE}    hive
    ${code}    ${text}    Api Res Params    ${res_type}
    Should Contain    ${text}    Hive查询超时(秒)

获取s3的regions
    ${code}    ${text}    Api Common Select Regions
    ${model}    Get Json Value    ${text}    /model
    Should Not Be Empty    ${model}

新建资源类型不匹配
    [Documentation]    | Name | 新建资源类型不匹配 |
    ...    | Author | sunqinglinwen |
    ...    | Date | 2020-08-12 |
    ...    | Update | 2020-08-12 |
    ...    新建一个mysql资源，但是资源类型是oracle
    [Tags]    skip    bug
    # 设置参数
    ${host}    Get From Dictionary    ${mysql_params}    host
    ${url}    Get From Dictionary    ${mysql_params}    url
    ${port}    Get From Dictionary    ${mysql_params}    port
    ${user}    Get From Dictionary    ${mysql_params}    user
    ${password}    Get From Dictionary    ${mysql_params}    password
    ${params}    Get From Dictionary    ${mysql_params}    params
    ${otherParams}    Get From Dictionary    ${mysql_params}    otherParams
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    oracle
    ${pid}    Get From List    ${GLOBAL_PIDS}    0
    ${resName}    Set Variable    新建资源类型不匹配-${current_date}
    ${maxConnectionSize}    Set Variable    20
    ${code}    ${text}    Api Res Add    host=${host}    url=${url}    port=${port}    user=${user}    password=${password}    resName=${resName}    pid=${pid}    resType=${resType}    maxConnectionSize=${maxConnectionSize}    params=${params}    otherParams=${otherParams}
    # 检查请求是否调用成功
    Should Be Equal As Integers    ${code}    200
    ${check_code}    Get Json Value    ${text}    /code
    Should Be Equal As Integers    ${check_code}    0

新建资源参数不正确
    # 设置参数
    ${host}    Get From Dictionary    ${mysql_params}    host
    ${url}    Get From Dictionary    ${mysql_params}    url
    ${port}    Get From Dictionary    ${mysql_params}    port
    ${user}    Get From Dictionary    ${mysql_params}    user
    ${password}    Set Variable    test123
    ${params}    Get From Dictionary    ${mysql_params}    params
    ${otherParams}    Get From Dictionary    ${mysql_params}    otherParams
    ${resType}    Get From Dictionary    ${GLOBAL_RES_TYPE}    mysql
    ${pid}    Get From List    ${GLOBAL_PIDS}    0
    ${resName}    Set Variable    新建资源密码不正确-${current_date}
    ${maxConnectionSize}    Set Variable    20
    ${code}    ${text}    Api Res Add    host=${host}    url=${url}    port=${port}    user=${user}    password=${password}    resName=${resName}    pid=${pid}    resType=${resType}    maxConnectionSize=${maxConnectionSize}    params=${params}    otherParams=${otherParams}
    # 检查请求是否调用成功
    Should Be Equal As Integers    ${code}    200
    Should Contain    ${text}    Connection test failed
