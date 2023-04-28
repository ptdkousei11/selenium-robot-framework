*** Settings ***
Documentation       Find Element(s)

Library             SeleniumLibrary
Library             RPA.Desktop
Library             RPA.Netsuite

Suite Setup         Open URL
Suite Teardown      Close Browser


*** Variables ***
${URL}      https://demo.guru99.com/test/ajax.html


*** Test Cases ***
Click "Yes" button
    Click Element    id:yes
    Click Element    id:buttoncheck
    Page Should Contain    Radio button is checked and it's value is Yes

Click "No" button
    Click Element    id:no
    Click Element    id:buttoncheck
    Page Should Contain    Radio button is checked and it's value is Yes

Click "Reset" button
    Click Element    id:yes
    Click Element    //input[@value = 'Reset']
    Click Element    id:buttoncheck
    Page Should Contain    Radio button is Not checked

Get list of element and print element
    ${elements}    Get WebElements    name:name
    FOR    ${element}    IN    @{elements}
        ${value}    Get Value    ${element}
        Log    ${value}
    END


*** Keywords ***
Open URL
    Open Browser    ${URL}    edge
