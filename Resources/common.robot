*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Open Browser And Go To Page Old
    [Arguments]  ${url}  ${browser}
    Open Browser  about:blank  ${browser}  options=add_argument("--no-sandbox")
    Go to  ${url}

Open Browser And Go To Page
    [Arguments]  ${url}  ${browser}
    Log     Creating WebDriver   WARN
    # Start Virtual Display    1920   1920
    ${options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys
    Call Method   ${options}   add_argument   --no-sandbox
    Call Method   ${options}   add_argument   --disable-setuid-sandbox
    Create WebDriver   Chrome   chrome_options=${options}
    Go To   ${url}

