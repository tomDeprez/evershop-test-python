*** Settings ***
Resource    ../../config.robot
Test Setup  Open Browser  http://192.168.246.145:3000/  chrome  #headlesschrome
Test Teardown  Close Browser


*** Test Cases ***
creer un produit simple
    login et creer un produit
    Click Element    xpath=//a[contains(., 'New Product')]   
    Sleep    1
    Input Text    id=name            Smartphone X
    Input Text    id=sku             SPX-001
    Input Text    id=price           599.99
    Input Text    id=weight          0.2
    Select From List By Label    id:tax_class    Taxable Goods
    Execute JavaScript    document.querySelector('#rows').innerText = 'Smartphone dernière génération';
    # Pour le champ 'category', vous devez gérer le clic et la sélection via du JavaScript ou un enregistrement préalable
    Input Text    id=urlKey         smartphone-x
    Input Text    id=metaTitle      Smartphone X
    Input Text    id=metaKeywords   smartphone, électronique
    Input Text    id=meta_description    Smartphone X avec des fonctionnalités avancées
    Input Text    name=qty           100
    # Ajouter les attributs couleur et taille si présents dans le DOM
    Click Button    css=.button.primary
    Wait Until Page Contains   Editing Smartphone X


supprimer mon produit
    login et creer un produit
    Click Element    xpath=//a[contains(., 'Products')] 
    Click Element    css=tr:nth-of-type(2) .checkbox-unchecked
    Click Element    css=.border-l:nth-of-type(4)
    Wait Until Element Is Enabled    css=.critical      5
    Click Element    css=.critical