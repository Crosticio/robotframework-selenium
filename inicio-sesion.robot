***Settings***
Documentation       Pruebas de inicio de sesión
Resource            src.robot

***Variables***
${SCHEME}       https
${HOMEPAGE}     stg.doctoraki.com
${PATH}         citas-medicas
${UserMail}     danieliriarte@yopmail.com
${Password}     Bolivar2020.
# ${UserMail}     dyes.0920@gmail.com
# ${Password}     monocuco

***Test Cases***
TestCase 001
    Open    chrome      ${SCHEME}       ${HOMEPAGE}
    Wait Until Element Is Visible   xpath=//*[@id="trackLogIn"]
    Click Element   xpath=//*[@id="trackLogIn"]
    Wait Until Element Is Visible   xpath=//*[@id="email"]
    Input Text      xpath=//*[@id="email"]      ${UserMail}
    Input Password      xpath=//*[@id="password"]   ${Password}
    Click Element   xpath=//*[@id="btn_login"]
    Wait Until Location Is      ${SCHEME}://${HOMEPAGE}/${PATH}     5
    Page Should Contain     citas
    Close
