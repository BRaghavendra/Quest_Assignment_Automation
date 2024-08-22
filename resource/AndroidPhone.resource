*** Settings ***
Documentation  AppiumLibrary keywords to handle otp from yahoo mail
# Library  AppiumLibrary
Library    OperatingSystem

*** Variables ***
${Automation_name}    UIAutomator2
${Android_sms_app_apk}                ${CURDIR}/xxx/xxx.apk
${Platform_Name}      Android
${Platform_Version}   %{ANDROID_PLATFORM_VERSION=11}

*** Keywords ***
# Open Test Application
#   Open Application  http://127.0.0.1:4723/wd/hub  automationName=${Automation_name}
#   ...  platformName=${Platform_Name}  platformVersion=${Platform_Version}
#   ...  app=${Android_sms_app_apk}  appPackage=xxx     appActivity=xxx