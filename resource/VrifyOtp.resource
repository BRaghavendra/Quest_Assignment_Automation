*** Settings ***
Documentation    Keywords to use to validate otp received to mobile
Resource    ../locators/VerifyOtpLocators.robot
Library    SeleniumLibrary

*** Keywords ***
Verify Otp
    [Documentation]    keyword to verify ${OPTIONS}
    [Arguments]    ${otp}
    Wait Until Element Is Visible    ${input_otp_field}
    Log To Console    Navigated to Otp varify page
    Input Text    ${input_otp_field}    ${otp}
    Log To Console    Otp Entered