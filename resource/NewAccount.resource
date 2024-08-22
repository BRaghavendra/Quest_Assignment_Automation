*** Settings ***
Documentation    This file helps to create new account in yahoo domain
Library    SeleniumLibrary
Library    XML
Resource    ../locators/NewAccountLocators.robot


*** Keywords ***
Create new account
    [Documentation]    Keyword to create new yahoo account with all requried details
    ...    for domain default is yahoo.com, can use myyahoo.com

    [Arguments]    ${first_name}    ${last_name}    ${email_user_id}   
    ...    ${password}    ${dob_month_as_number}    ${dob_date}    ${dob_year}    ${domain}=yahoo.com    
    Wait Until Element Is Visible    ${signup_form}
    Log To Console    Navigated to Create New Account page
    Click Element    ${input_firstname}
    Input Text    ${input_firstname}    ${first_name}
    Log To Console    First Name Provided
    Click Element    ${input_lastname}
    Input Text    ${input_lastname}    ${last_name}
    Log To Console    Last Name Provided
    Input Text    ${input_userid}    ${email_user_id}
    Log To Console    UserId Provided
    Select From List By Value    ${select_domain}    ${domain}
    Log To Console    Selected Desired Domain
    Input Password    ${input_password}    ${password}
    Log To Console    Password Provided
    Select From List By Value    ${select_month}    ${dob_month_as_number}
    Input Text    ${input_date}    ${dob_date}
    Input Text    ${input_year}    ${dob_year}
    Log To Console    Date of Birth Provided
    Click Button    ${btn_next}
    Log To Console    Next Button clicked



