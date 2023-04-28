*** Settings ***
Documentation       WebElement

Library             SeleniumLibrary

Suite Setup         Open URL


*** Variables ***
${URL}      https://demo.guru99.com/test/login.html


*** Test Cases ***
Set
    Input Text    id:email    abcd@gmail.com
    Input Text    id:passwd    abcdefghlkjl
    Log To Console    Text Field Set

Clear
    Input Text    id:email    abcd@gmail.com
    Input Text    id:passwd    abcdefghlkjl
    Log To Console    Text Field Set
    Clear Element Text    id:email
    Clear Element Text    id:passwd
    Log To Console    Text Field Clear

Login
    Input Text    id:email    abcd@gmail.com
    Input Text    id:passwd    abcdefghlkjl
    Click Button    id:SubmitLogin
    Page Should Contain    Successfully Logged in...
    Log To Console    Login Success!


*** Keywords ***
Open URL
    Open Browser    ${URL}    edge
