*** Settings ***
Library  SeleniumLibrary
Resource  login_success.robot

*** Keywords ***
login et creer un produit
    Maximize Browser Window
    Go To   http://192.168.246.145:3000/admin
    login with    admin@admin.com    123456789
    Wait Until Element Is Visible    xpath=//a[contains(., 'New Product')]    10s