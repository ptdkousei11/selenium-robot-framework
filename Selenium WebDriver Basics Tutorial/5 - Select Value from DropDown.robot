*** Settings ***
Documentation       Select Value from DropDown

Library             Selenium2Library

Suite Setup         Open URL


*** Variables ***
${URL}      https://demo.guru99.com/test/newtours/register.php


*** Test Cases ***
Select Value from DropDown
    Select From List By Value    country    ARGENTINA
    List Selection Should Be    country    ARGENTINA


*** Keywords ***
Open URL
    Open Browser    ${URL}    edge
