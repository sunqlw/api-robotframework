*** Settings ***
Library           Selenium2Library

*** Test Cases ***
web自动化
    [Tags]    skip
    Comment    Open Browser    http://demo202.test.com:8070/datahub/    Google Chrome
    Comment    Maximize Browser Window
    Comment    Comment    ${un}    Execute Javascript \    document.getElementById('search_one')
    Comment    Assign Id To Element    //*[@id="FormLoginBtn"]    my_id
    Comment    Execute Javascript    document.getElementById('my_id').click()
    Comment    Sleep    2
    Comment    Close Browser
    Comment    Input Text

测试fail
    [Tags]    skip
    Comment    Run Keyword If    '1' == '1'    Fail    失败了
    Comment    Comment    Run Keyword If    '1' == '1'    Fatal Error    彻底失败了
    Comment    log    第一个case

测试fail2
    [Tags]    skip
    Comment    log    第二个case
    Comment    Run Keyword Unless    '1' == '2'    log    1
    Comment    Pass Execution if    '1' == '2'    case通过
