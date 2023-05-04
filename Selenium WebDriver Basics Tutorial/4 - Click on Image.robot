*** Settings ***
Documentation       Click on Image

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
    Click Image    Sauce Labs Bike Light
    Page Should Contain    Back to products
    Page Should Contain    Sauce Labs Bike Light


*** Keywords ***
Open URL
    Open Browser    ${URL}    edge
