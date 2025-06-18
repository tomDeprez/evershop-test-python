*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
login with
    [Arguments]    ${email}    ${password}
    Go To   http://localhost:3000/admin
    Input Text   name=email  ${email}
    Input Text   name=password  ${password}
    Click Button    css:.button.primary