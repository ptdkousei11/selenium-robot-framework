*** Settings ***
Documentation       Select Radio Button and CheckBox

Library             SeleniumLibrary

Suite Setup         Open URL


*** Variables ***
${URL}      https://demo.guru99.com/test/radio.html


*** Test Cases ***
Radio button select
    Select Radio Button    webform    Option 1
    Radio Button Should Be Set To    webform    Option 1

    Select Radio Button    webform    Option 2
    Radio Button Should Be Set To    webform    Option 2

    Select Radio Button    webform    Option 3
    Radio Button Should Be Set To    webform    Option 3

CheckBox select
    # Checkbox1
    Select Checkbox    id:vfb-6-0
    Checkbox Should Be Selected    id:vfb-6-0

    # Checkbox2
    Select Checkbox    id:vfb-6-1
    Checkbox Should Be Selected    id:vfb-6-1

    # Checkbox2
    Select Checkbox    id:vfb-6-2
    Checkbox Should Be Selected    id:vfb-6-2


*** Keywords ***
Open URL
    Open Browser    ${URL}    edge
