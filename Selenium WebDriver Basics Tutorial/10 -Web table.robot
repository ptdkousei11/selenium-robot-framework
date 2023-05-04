*** Settings ***
Documentation       Web table

Library             Selenium2Library

Suite Setup         Open URL


*** Variables ***
${URL}      https://demo.guru99.com/test/table.html


*** Test Cases ***
Web table
    ${number}    Get Table Cell    //table[@cellspacing="1"]    2    1
    Log    ${number}
    ${number}    Get Table Cell    //table[@cellspacing="1"]    4    2
    Log    ${number}


*** Keywords ***
Open URL
    Open Browser    ${URL}    edge
