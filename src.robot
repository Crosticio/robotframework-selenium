***Settings***
Library     SeleniumLibrary
Library     String
Library     Collections

***Keywords***
Open
    [Arguments]     ${BROWSER}      ${SCHEME}       ${HOMEPAGE}
    Open Browser    ${SCHEME}://${HOMEPAGE}       ${BROWSER}

Close
    Delete All Cookies
    Close Browser