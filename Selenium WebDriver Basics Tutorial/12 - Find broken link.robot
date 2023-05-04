*** Settings ***
Documentation       Find broken link

Library             Selenium2Library
Library             Collections

Suite Setup         Open URL


*** Variables ***
${URL}      https://demo.guru99.com/test/newtours/


*** Test Cases ***
Find broken link
    ${links}    Get WebElements    //tbody/tr/td/table/tbody/tr/td//child::a
    @{link_names}    Create List
    FOR    ${link}    IN    @{links}
        ${element}    Get Text    ${link}
        Append To List    ${link_names}    ${element}
    END

    FOR    ${element}    IN    @{link_names}
        Click Link    ${element}
        ${title}    Get Title
        TRY
            Page Should Not Contain    Under Construction: Mercury Tours
            ${log}    Catenate    ${element}    Link is working.
            Log To Console    ${log}.
        EXCEPT
            ${log}    Catenate    ${element}    Link is under construction.
            Log To Console    ${log}
        END
        Go Back
    END


*** Keywords ***
Open URL
    Open Browser    ${URL}    edge
