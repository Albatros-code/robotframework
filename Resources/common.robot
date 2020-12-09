*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Open Browser And Go To Page
    [Arguments]  ${url}  ${browser}
    Open Browser  about:blank  ${browser}  options=add_argument("--no-sandbox")
    Go to  ${url}


