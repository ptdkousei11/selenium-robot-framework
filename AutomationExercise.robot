*** Settings ***
Documentation       Test Case 1: Register User

Library             Selenium2Library


*** Variables ***
${URL}      https://automationexercise.com/


*** Test Cases ***
Register User
    Open URL    ${URL}
    Maximize Browser Window
    Title Should Be    Automation Exercise
    Click Link    xpath://a[@href='/login']
    Page Should Contain    New User Signup!
    Input Text    name:name    Kousei
    Input Text    xpath://input[@data-qa='signup-email']    kousei@gmail.com
    Click Button    Signup
    Select Radio Button    title    Mr
    Input Password    password    kousei123
    Select From List By Value    days    5
    Select From List By Value    months    3
    Select From List By Value    years    2000
    Select Checkbox    id:newsletter
    Select Checkbox    id:optin
    Input Text    id:first_name    Kousei
    Input Text    id:last_name    Arima
    Input Text    id:company    Google
    Input Text    id:address1    Street 1
    Select From List By Value    country    United States
    Input Text    id:state    Colorado
    Input Text    id:city    Denver
    Input Text    id:zipcode    80123
    Input Text    id:mobile_number    82123456
    Click Button    Create Account
    Set Browser Implicit Wait    3 seconds
    Page Should Contain    Account Created!
    Click Element    //a[@class='btn btn-primary']
    Page Should Contain    Logged in as
    Click Link    xpath://a[@href='/delete_account']
    Page Should Contain    Account Deleted!
    Click Element    //a[@class='btn btn-primary']


*** Keywords ***
Open URL
    [Arguments]    ${site}
    Open Browser    ${site}    edge
