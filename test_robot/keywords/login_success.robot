*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
login with
    [Arguments]    ${email}    ${password}
    Input Text   name=email  ${email}
    Input Text   name=password  ${password}
    Click Button    css:.button.primary