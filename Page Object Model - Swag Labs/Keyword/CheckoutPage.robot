*** Settings ***
Library         Selenium2Library
Variables       ../Locator/Locator.py


*** Keywords ***
Enter First Name
    [Arguments]    ${text}
    Input Text    ${firstName}    ${text}

Enter Last Name
    [Arguments]    ${text}
    Input Password    ${lastName}    ${text}

Enter Zip Code
    [Arguments]    ${text}
    Input Text    ${zipCode}    ${text}

Click Continue Button
    Click Button    ${btnContinueCheckout}

Blank Error
    Page Should Contain    Error: First Name is required
