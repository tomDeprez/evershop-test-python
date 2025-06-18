*** Settings ***
Resource    ../config.robot
Test Setup  Open Browser  http://localhost:3000/  chrome  #headlesschrome
Test Teardown  Close Browser

*** Test Cases ***
login success
    login with    admin@admin.com    123456789
    Wait Until Page Contains    Dashboard

login error
    login with  admin@admin.com    password
    Wait Until Page Contains    Invalid email or password

