***Settings***
Documentation   Existe en un documento de texto los pasos manuales
...             Esta es mi primera prueba
Library         SeleniumLibrary

***Variables***
${url}  https://www.google.com
${Browser}  chrome

***Keywords***

***Test Cases***
C001 Busqueda de palabras en google
    Open Browser    ${url}  ${Browser}
    Wait Until Element Is Visible   xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input
    Input Text  xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input  casos de prueba
    # Click Element   xpath=/html/body/div[1]/div[2]/div/img
    # Click Element   xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
    Press Keys   xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input  \ue007
    Title Should Be   casos de prueba - Buscar con Google
    Page Should Contain   casos de prueba
    Close Browser
