*** Settings ***
Documentation       Upload a File

Library             Selenium2Library

Suite Setup         Open URL


*** Variables ***
${URL}          https://demo.guru99.com/test/upload/
${file_path}    D://ptdat-batch40/selenium-robot-framework/README.md


*** Test Cases ***
Upload a File
    Choose File    uploadfile_0    ${file_path}
    Select Checkbox    terms
    Click Button    submitbutton
    Page Should Contain    successfully uploaded


*** Keywords ***
Open URL
    Open Browser    ${URL}    edge
