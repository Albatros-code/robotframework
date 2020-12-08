*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Open Browser And Go To Page
    [Arguments]  ${url}  ${browser}
    Open Browser  about:blank  ${browser}
    Go to  ${url}


