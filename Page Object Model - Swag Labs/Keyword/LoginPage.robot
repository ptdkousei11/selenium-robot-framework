*** Settings ***
Library         Selenium2Library
Variables       ../Locator/LoginPage.py


*** Keywords ***
Open My Browser
    [Arguments]    ${URL}    ${Browser}
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window

Enter Username
    [Arguments]    ${username}
    Input Text    ${loginUsername}    ${username}

Enter Password
    [Arguments]    ${password}
    Input Password    ${loginPassword}    ${password}

Click Login Button
    Click Button    ${btnLogin}

Verify Login Successful
    Title Should Be    Swag Labs

Login Fail
    Page Should Contain    Sorry, this user has been locked out.

Close My Browser
    Close Browser
