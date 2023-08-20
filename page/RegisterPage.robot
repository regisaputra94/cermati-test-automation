*** Settings ***
Resource            ../framework/router.robot

*** Variables ***
${registerpage_field_email}                         xpath=//input[@id='email']
${registerpage_field_phone}                         xpath=//input[@id='mobilePhone']
${registerpage_field_password}                      xpath=//input[@id='password']
${registerpage_field_confirmPass}                   xpath=//input[@id='confirmPassword']
${registerpage_field_firstName}                     xpath=//input[@id='firstName']
${registerpage_field_lastName}                      xpath=//input[@id='lastName']
${registerpage_field_city}                          xpath=//input[@id='cityAndProvince']
${registerpage_button_daftar}                       xpath=//div[@id='safe-area']//div[@class='container_Eq-qi']/button[@type='button']

*** Keywords ***
Input Valid Data In Register Page
    [Arguments]      ${email}=${EMAIL}          ${phone}=${PHONE}
    ...              ${password}=${PASSWORD}    ${fname}=${FNAME}
    ...              ${lname}=${LNAME}          ${city}=${CITY}
    Wait Until Element Is Visible                   ${registerpage_field_email}
    Input Text                                      ${registerpage_field_email}         ${email}
    Wait Until Element Is Visible                   ${registerpage_field_phone}
    Input Text                                      ${registerpage_field_phone}         ${phone}
    Wait Until Element Is Visible                   ${registerpage_field_password}
    Input Text                                      ${registerpage_field_password}         ${password}
    Wait Until Element Is Visible                   ${registerpage_field_confirmPass}
    Input Text                                      ${registerpage_field_confirmPass}         ${password}
    Wait Until Element Is Visible                   ${registerpage_field_firstName}
    Input Text                                      ${registerpage_field_firstName}         ${fname}
    Wait Until Element Is Visible                   ${registerpage_field_lastName}
    Input Text                                      ${registerpage_field_lastName}         ${lname}
    Wait Until Element Is Visible                   ${registerpage_field_city}
    Input Text                                      ${registerpage_field_city}         ${city}
    
User Can Tap Button Daftar In Register Page
    Wait Until Element Is Visible                   ${registerpage_button_daftar}
    Click Element                                   ${registerpage_button_daftar}