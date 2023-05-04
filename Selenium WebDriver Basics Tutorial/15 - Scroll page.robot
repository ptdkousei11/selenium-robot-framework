*** Settings ***
Documentation       Scroll page

Library             Selenium2Library


*** Variables ***
${URL}      https://testautomationpractice.blogspot.com/


*** Test Cases ***
Scroll page
    Open URL
    Scroll Element Into View    //table[@name='BookTable']
    Capture Element Screenshot    //table[@name='BookTable']


*** Keywords ***
Open URL
    Open Browser    ${URL}    edge
