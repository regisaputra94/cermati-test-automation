*** Settings ***
Resource                        ../framework/router.robot

Test Timeout                    ${DEFAULT_TEST_TIMEOUT}
Test Setup                      base.Start Testing        ${HOST}
Test Teardown                   base.End Testing

*** Test Cases ***
Automation Test For Registration Cermati
    [Documentation]     Test case for refistration cermation
    [Tags]              Smoke/sanity
    Input Valid Data In Register Page
    User Can Tap Button Daftar In Register Page
    Sleep    10