*** Settings ***
Documentation    Keywords to add phone number and handling one time password received to mobile
Resource    ../locators/AddPhoneNumberLocators.robot
Library    SeleniumLibrary

*** Keywords ***
Get Code
    [Documentation]    keyword to send otp as text message to mobile/as whatsapp message
    [Arguments]    ${phone_number}    ${message_type}=sms
    Wait Until Element Is Visible    ${input_phone_numner}
    Input Text    ${input_phone_numner}    ${phone_number}
    Log To Console    Phone Number Provided
    IF    "${message_type}" == "whatsapp"
           Click Button    ${btn_get_code_on_whatsapp} 
    ELSE IF    "${message_type}" == "sms"
        Click Button    ${btn_get_code_by_text}
    ELSE
        Fail    Invalid mrwquest type to send otp
    END
    Log To Console    Clicked on Get code by next button
