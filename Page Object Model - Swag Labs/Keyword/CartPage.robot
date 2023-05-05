*** Settings ***
Library         Selenium2Library
Variables       ../Locator/Cart.py


*** Keywords ***
Continue Shopping
    Click Button    ${btnContinue}
    Page Should Contain    Products

Checkout
    Click Button    ${btnCheckout}
    Page Should Contain    Checkout: Your Information

Remove Backpack
    Click Button    ${removeBackpack}

Remove Bikelight
    Click Button    ${removeBikelight}

Remove Bolt T-Shirt
    Click Button    ${removeBoltTshirt}

Remove Fleece Jacket
    Click Button    ${removeFleecejacket}

Remove Onesie
    Click Button    ${removeOnesie}
