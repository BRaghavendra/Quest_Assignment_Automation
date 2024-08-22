*** Settings ***
Documentation    Testcae file to execute and verify  yahoo finance new account creation
# Suite Setup    Delete recently creaed yahoo account
Suite Teardown    Close All Browsers

Resource    ../resource/HomePage.resource
Resource    ../resource/LoginPage.resource
Resource    ../resource/NewAccount.resource
Resource    ../resource/AddPhoneNumber.resource
Resource    ../resource/AndroidPhone.resource
Resource    ../resource/VrifyOtp.resource
Resource    ../resource/SuccessPage.resource

*** Test Cases ***
Create yahoo account
    [Documentation]    test case to create account in yahoo finance
    Navigate to yahoo finanance login page    chrome
    Click create new account
    # As my details exceeded maximum attempts, modified to generic inputs.
    Create new account    firstname    lastname    fistname1234   firstlast@1   8    30    1988
    Get Code    1234567890
    Verify Otp    123456
    Verify Success account created message

    