*** Settings ***
Library             Selenium2Library
Library             RPA.Robocorp.WorkItems
Resource            ../Keyword/LoginPage.robot
Resource            ../Keyword/InventoryPage.robot
Resource            ../Keyword/CartPage.robot
Resource            ../Keyword/CheckoutPage.robot
Variables           ../Locator/Locator.py

Suite Setup         Login To Page
Suite Teardown      Close My Browser


*** Variables ***
${URL}          https://www.saucedemo.com/
${Browser}      edge
${username}     standard_user
${password}     secret_sauce


*** Test Cases ***
Buy and Checkout
    Add Backpack To Cart
    Add Bikelight To Cart
    Add Onesie To Cart
    Go To Cart Page
    Sleep    3 seconds
    Checkout
    Enter First Name    Kousei
    Enter Last Name    Arima
    Enter Zip Code    22381
    Sleep    3 seconds
    Click Continue Button
    Sleep    3 seconds
    Click Button    Finish
    Page Should Contain    Your order has been dispatched
    Sleep    3 seconds


*** Keywords ***
Login To Page
    Open My Browser    ${URL}    ${Browser}
    Enter Username    ${username}
    Enter Password    ${password}
    Click Login Button
    Verify Login Successful
