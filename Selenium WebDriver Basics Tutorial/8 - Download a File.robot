*** Settings ***
Documentation       Download a File

Library             Selenium2Library
Library             RPA.Desktop

Suite Setup         Open URL


*** Variables ***
${URL}      https://www.browserstack.com/test-on-the-right-mobile-devices


*** Test Cases ***
Download a File
    Click Button    id:accept-cookie-notification
    Click Element    class:icon-csv


*** Keywords ***
Open URL
    Open Browser    ${URL}    edge
