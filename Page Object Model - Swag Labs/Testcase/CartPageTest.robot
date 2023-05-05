*** Settings ***
Library             Selenium2Library
Library             RPA.Robocorp.WorkItems
Resource            ../Keyword/LoginPage.robot
Resource            ../Keyword/InventoryPage.robot
Resource            ../Keyword/CartPage.robot

Suite Setup         Login To Page
Suite Teardown      Close My Browser


*** Variables ***
${URL}          https://www.saucedemo.com/
${Browser}      edge
${username}     standard_user
${password}     secret_sauce


*** Test Cases ***
Add Then Remove Item From Cart Page
    Add Backpack To Cart
    Add Bikelight To Cart
    Add Bolt T-Shirt To Cart
    Add Fleece Jacket To Cart
    Add Onesie To Cart
    Go To Cart Page
    Sleep    3 seconds
    Remove Backpack
    Remove Bikelight
    Remove Bolt T-Shirt
    Remove Fleece Jacket
    Remove Onesie
    Sleep    3 seconds

Go To Checkout Page
    Add Backpack To Cart
    Go To Cart Page
    Sleep    3 seconds
    Checkout
    Sleep    3 seconds


*** Keywords ***
Login To Page
    Open My Browser    ${URL}    ${Browser}
    Enter Username    ${username}
    Enter Password    ${password}
    Click Login Button
    Verify Login Successful
