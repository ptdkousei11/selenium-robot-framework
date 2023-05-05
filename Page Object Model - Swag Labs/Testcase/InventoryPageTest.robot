*** Settings ***
Library             Selenium2Library
Library             RPA.Robocorp.WorkItems
Resource            ../Keyword/LoginPage.robot
Resource            ../Keyword/InventoryPage.robot

Suite Setup         Login To Page
Suite Teardown      Close My Browser


*** Variables ***
${URL}              https://www.saucedemo.com/
${Browser}          edge
${username}         standard_user
${password}         secret_sauce
@{item-names}
...                 Sauce Labs Backpack
...                 Sauce Labs Bike Light
...                 Sauce Labs Bike Light
...                 Sauce Labs Bike Light
...                 Sauce Labs Onesie


*** Test Cases ***
Go To Item Info Page
    FOR    ${item-name}    IN    @{item-names}
        Go To Item Info Page    ${item-name}
        Verify Item Info Right    ${item-name}
        Go Back
    END

Add Item To Cart
    Add Backpack To Cart
    Add Bikelight To Cart
    Add Bolt T-Shirt To Cart
    Add Fleece Jacket To Cart
    Add Onesie To Cart
    Go To Cart Page
    Sleep    3 seconds
    FOR    ${item-name}    IN    @{item-names}
        Verify Item Add To Cart Successful    ${item-name}
    END

Remove Item From Inventory Page
    Add Backpack To Cart
    Add Bikelight To Cart
    Add Bolt T-Shirt To Cart
    Add Fleece Jacket To Cart
    Add Onesie To Cart
    Remove Backpack From Inventory
    Remove Bikelight From Inventory
    Remove Bolt T-Shirt From Inventory
    Remove Fleece Jacket From Inventory
    Remove Onesie From Inventory
    Page Should Not Contain    Remove

Logout Page
    Open Menu
    Sleep    3 seconds
    Page Logout
    Sleep    3 seconds


*** Keywords ***
Login To Page
    Open My Browser    ${URL}    ${Browser}
    Enter Username    ${username}
    Enter Password    ${password}
    Click Login Button
    Verify Login Successful
