*** Settings ***
Documentation       Alert

Library             Selenium2Library

Suite Setup         Open URL


*** Variables ***
${URL}      https://demo.guru99.com/test/delete_customer.php


*** Test Cases ***
Alert
    Input Text    cusid    53920
    Click Button    submit
    ${msg}    Handle Alert
    Log    ${msg}
    Handle Alert


*** Keywords ***
Open URL
    Open Browser    ${URL}    edge
