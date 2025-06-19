*** Settings ***
Resource    ../../config.robot
Test Setup  Open Browser  http://192.168.246.145:3000/  chrome  #headlesschrome
Test Teardown  Close Browser


*** Test Cases ***
create an account
    Maximize Browser Window
    Click Element    css=.self-center:nth-of-type(3) a
    Click Element    css=.gap-8:nth-of-type(1) a
    Input Text   name=full_name    test
    Input Text   name=email    test@test.com
    Input Text   name=password    testtest
    Click Element    css=.button.primary

login success
    Maximize Browser Window
    Click Element    css=.self-center:nth-of-type(3) a
    login with  test@test.com    testtest    
    Sleep    15