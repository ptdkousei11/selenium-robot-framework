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

Scroll with javascript
    Open URL
    Maximize Browser Window
    Execute Javascript    window.scrollTo(0,1500)


*** Keywords ***
Open URL
    Open Browser    ${URL}    edge
