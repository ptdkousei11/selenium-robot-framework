*** Settings ***
Documentation       Mouse Operations

Library             Selenium2Library


*** Variables ***
${URL}      https://testautomationpractice.blogspot.com/


*** Test Cases ***
Double click
    Open URL
    Double Click Element    //*[@id="HTML10"]/div[1]/button
    Textfield Should Contain    //*[@id='field2']    Hello World!

Drag and Drop
    Open URL
    Drag And Drop    //*[@id='draggable']    //*[@id='droppable']
    Element Should Contain    //*[@id='droppable']    Dropped!

Right click
    Open Browser    http://swisnl.github.io/jQuery-contextMenu/demo.html    edge
    Open Context Menu    //*[@class='context-menu-one btn btn-neutral']


*** Keywords ***
Open URL
    Open Browser    ${URL}    edge
