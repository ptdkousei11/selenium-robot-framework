*** Settings ***
Documentation       Dynamic web table

Library             Selenium2Library

Suite Setup         Open URL


*** Variables ***
${URL}      https://demo.guru99.com/test/web-table-element.php


*** Test Cases ***
Dynamic web table #1
    ${columns}    Get Element Count    //div[@id = 'leftcontainer']/table/thead/tr/th
    Log    ${columns}
    ${rows}    Get Element Count    //div[@id = 'leftcontainer']/table/tbody/tr/td[1]
    Log    ${rows}

Dynamic web table #2
    ${rows}    Get WebElements    //div[@id='leftcontainer']/table/tbody/tr[3]
    ${text}    Get Text    ${rows}
    Log    ${text}
    ${cell}    Get Table Cell    class:dataTable    4    2
    Log    ${cell}

Dynamic web table #3
    ${first_cell}    Get Table Cell    class:dataTable    2    4
    ${max}    Convert To Number    ${first_cell}
    FOR    ${row}    IN RANGE    3    28    1
        ${cell}    Get Table Cell    class:dataTable    ${row}    4
        IF    ${cell} > ${max}
            ${max}    Convert To Number    ${cell}
        END
    END
    Log    ${max}


*** Keywords ***
Open URL
    Open Browser    ${URL}    edge
