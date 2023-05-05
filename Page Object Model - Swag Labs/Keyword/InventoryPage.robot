*** Settings ***
Library         Selenium2Library
Library         RPA.Desktop
Variables       ../Locator/Inventory.py


*** Keywords ***
Go To Item Info Page
    [Arguments]    ${item-name}
    Click Link    ${item-name}

Verify Item Info Right
    [Arguments]    ${item-name}
    Page Should Contain    ${item-name}
    Page Should Contain Button    Back to products

Add Backpack To Cart
    Click Button    ${addBackpack}

Add Bikelight To Cart
    Click Button    ${addBikelight}

Add Bolt T-Shirt To Cart
    Click Button    ${addBoltTshirt}

Add Fleece Jacket To Cart
    Click Button    ${addFleecejacket}

Add Onesie To Cart
    Click Button    ${addOnesie}

Remove Backpack From Inventory
    Click Button    ${removeBackpack}

Remove Bikelight From Inventory
    Click Button    ${removeBikelight}

Remove Bolt T-Shirt From Inventory
    Click Button    ${removeBoltTshirt}

Remove Fleece Jacket From Inventory
    Click Button    ${removeFleecejacket}

Remove Onesie From Inventory
    Click Button    ${removeOnesie}

Verify Item Add To Cart Successful
    [Arguments]    ${item-name}
    Page Should Contain    ${item-name}

Go To Cart Page
    Click Element    ${cart}
    Page Should Contain    Your Cart
    Page Should Contain    QTY
    Page Should Contain    Description
    Page Should Contain Button    Continue Shopping
    Page Should Contain Button    Checkout

Open Menu
    Click Button    ${btnMenu}

Page Logout
    Click Link    Logout
    Page Should Contain Button    Login
