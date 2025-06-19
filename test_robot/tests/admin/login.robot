*** Settings ***
Resource    ../../config.robot
Test Setup  Open Browser  http://192.168.246.145:3000/  chrome  #headlesschrome
Test Teardown  Close Browser

*** Test Cases ***
login success
    Go To   http://192.168.246.145:3000/admin
    login with    admin@admin.com    123456789
    Wait Until Page Contains    Dashboard

login error
    Go To   http://192.168.246.145:3000/admin
    login with  admin@admin.com    password
    Wait Until Page Contains    Invalid email or password

