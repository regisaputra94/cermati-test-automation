*** Settings ***
Resource                router.robot

*** Variables ***
${URL_BLANK}            about:blank

*** Keywords ***
Start Testing
    [Arguments]     ${URL}
    Open Web Browser            ${URL}
    Set Selenium Timeout        ${DEFAULT_TIMEOUT}
    Set Selenium Speed	        ${DELAY}

End Testing
    Close All Browsers

Open Web Browser
    [Arguments]     ${URL}
    ${BROWSER}      Convert To Lower Case    ${BROWSER}
    Open Normal Browser                      ${URL}

Open Normal Browser
    [Arguments]     ${URL}
    Open Browser                ${URL_BLANK}      Firefox
    Maximize Browser Window
    Go To                       ${URL}