*** Settings ***
Documentation       13 - Capture Element & Full Page Screenshot

Library             Selenium2Library

Suite Setup         Open URL


*** Variables ***
${URL}      https://www.saucedemo.com/


*** Test Cases ***
Click on Image
    Input Text    id:user-name    standard_user
    Input Text    id:password    secret_sauce
    Click Button    id:login-button
    Title Should Be    Swag Labs
    Capture Element Screenshot    //div[@class='inventory_item_name']
    Capture Page Screenshot


*** Keywords ***
Open URL
    Open Browser    ${URL}    edge
