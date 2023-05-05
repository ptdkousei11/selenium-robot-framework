*** Settings ***
Library     Selenium2Library
Resource    ../Keyword/LoginPage.robot


*** Variables ***
${URL}              https://www.saucedemo.com/
${Browser}          edge
${username}         standard_user
${username-lock}    locked_out_user
${password}         secret_sauce


*** Test Cases ***
Login Test
    Open My Browser    ${URL}    ${Browser}
    Enter Username    ${username}
    Enter Password    ${password}
    Click Login Button
    Sleep    3 seconds
    Verify Login Successful
    Close My Browser

Login Fail Test
    Open My Browser    ${URL}    ${Browser}
    Enter Username    ${username-lock}
    Enter Password    ${password}
    Click Login Button
    Sleep    3 seconds
    Login Fail
    Close My Browser
