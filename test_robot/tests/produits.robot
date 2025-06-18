*** Settings ***
Resource    ../config.robot
Test Setup  Open Browser  http://localhost:3000/  chrome  #headlesschrome
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

supprimer mon produit
    login et creer un produit
    Click Element    xpath=//a[contains(., 'Products')] 
    Wait Until Element Is Visible    xpath=//table[contains(@class, 'listing')]//tbody/tr[2]//input[@type='checkbox']
    Click Element    xpath=//table[contains(@class, 'listing')]//tbody/tr[2]//input[@type='checkbox']
    Wait Until Element Is Visible    xpath=//a[span[normalize-space(text())="Delete"]]
    Click Element    xpath=//a[span[normalize-space(text())="Delete"]]