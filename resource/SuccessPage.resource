*** Settings ***
Documentation    keywords to verify the success account creaton
Library    SeleniumLibrary
Resource    ../locators/SuccesspageLocators.robot

*** Keywords ***
Verify Success account created message
    [Documentation]    keyword to verify successful account creation
    Wait Until Element Is Visible    ${acc_created_success_msg}
    Log To Console    Navigated to account sucecss page and Account creation successful.