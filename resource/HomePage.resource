*** Settings ***
Documentation    This file helps for initial sign in to yahoo finance
Library    SeleniumLibrary
Resource    ../locators/HomePageLocators.robot
Resource    ../locators/LoginPageLocators.robot

*** Variables ***
${yahoo_finance_url}    https://finance.yahoo.com/

*** Keywords ***
Handle yahoo old new signin link
    [Documentation]     As oberved yahoo lands for old version 
    ...    this keyword used to handle signin option for new ansd old version
        ${keyword_status}=  Run Keyword And Return Status    Wait Until Element Is Visible    ${lnk_signin}
    IF    "${keyword_status}" == "False"
        Wait Until Element Is Visible    ${lnk_oldpage_signin}
        Click Link    ${lnk_oldpage_signin}
    ELSE
        Wait Until Element Is Visible    ${lnk_signin}
        Click Link    ${lnk_signin}
    END
Navigate to yahoo finanance login page
    [Documentation]    Keyword to Luanch browser based on browser
    ...     default is chrome
    [Arguments]    ${browser}=firefox
    Set Global Variable    ${browser}
    Open Browser    ${yahoo_finance_url}    ${browser}
    Set Browser Implicit Wait    100
    Maximize Browser Window
    Wait Until Element Is Visible    ${lnk_signin}
    Log To Console    Landed to Yahoo Finance Home page
    Handle yahoo old new signin link
    Log To Console    Clicked on SignIn Button