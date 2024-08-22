*** Settings ***
Documentation    This file helps login page actions like: Existing login, create new account
Library    SeleniumLibrary
Resource    ../locators/LoginPageLocators.robot


*** Keywords ***
Click create new account
    [Documentation]    Keyword to create new account
    Wait Until Element Is Visible    ${login_user_check}
    Log To Console    Navigated to SignIn page
    Click Link    ${link_create_new_acc}
    Log To Console    Clicked on Create New Account Button