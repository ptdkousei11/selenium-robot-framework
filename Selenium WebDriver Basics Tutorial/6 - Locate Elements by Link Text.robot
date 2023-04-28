*** Settings ***
Documentation       Locate Elements by Link Text

Library             Selenium2Library

Suite Setup         Open URL


*** Variables ***
${URL}      https://www.saucedemo.com/


*** Test Cases ***
Locate Elements by Link Text
    Input Text    id:user-name    standard_user
    Input Text    id:password    secret_sauce
    Click Button    id:login-button
    Click Link    Sauce Labs Backpack


*** Keywords ***
Open URL
    Open Browser    ${URL}    edge
