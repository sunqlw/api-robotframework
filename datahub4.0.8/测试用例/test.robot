*** Settings ***
Library           Selenium2Library

*** Test Cases ***
web自动化
    Open Browser    http://demo202.test.com:8070/datahub/    Google Chrome
    Maximize Browser Window
    Comment    ${un}    Execute Javascript \    document.getElementById('search_one')
    Assign Id To Element    //*[@id="FormLoginBtn"]    my_id
    Execute Javascript    document.getElementById('my_id').click()
    Sleep    2
    Close Browser
    Input Text

循环
    FOR    ${x}    IN RANGE    2
    log    ${x}
    FOR    ${x}    IN    1    2
    log    ${x}
    @{list_str}    Create List    a    b    c
    FOR    ${x}    IN    @{list_str}
    Run Keyword If    '${x}' == 'b'    Exit For Loop
    log    ${x}
    FOR    ${x}    IN    @{list_str}
    Exit For Loop If    '${x}' == 'b'
    log    ${x}
    FOR    ${x}    IN    @{list_str}
    Run Keyword If    '${x}' == 'b'    Continue For Loop
    log    ${x}
    FOR    ${x}    IN    @{list_str}
    Continue For Loop If    '${x}' == 'b'
    log    ${x}

重复执行
    Repeat Keyword    3 times    log    测试重复执行
    Repeat Keyword    2    log    测试重复执行2
    Repeat Keyword    2 seconds    log    测试重复执行3

分支
    Run Keyword If    'a' == 'b'    log    test1
    ...    ELSE IF    'a' == '1'    log    test2
    ...    ELSE    log    失败

测试fail
    Run Keyword If    '1' == '1'    Fail    失败了
    Comment    Run Keyword If    '1' == '1'    Fatal Error    彻底失败了
    log    第一个case

测试fail2
    log    第二个case
    Run Keyword Unless    '1' == '2'    log    1
    Pass Execution if    '1' == '2'    case通过
