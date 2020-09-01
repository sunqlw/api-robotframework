*** Settings ***
Resource          ../资源管理/head.robot
Library           Selenium2Library

*** Test Cases ***
001-登录
    [Tags]    test
    ${proxies}    Create Dictionary    http=http://127.0.0.1:8888
    登录    ${un}    ${pw}
    获取项目ids
    # 设置代理用户
