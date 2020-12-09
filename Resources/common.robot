*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Open Browser And Go To Page Normal
    [Arguments]  ${url}  ${browser}
    Open Browser  about:blank  ${browser}  options=add_argument("--no-sandbox")
    Go to  ${url}

Open Browser And Go To Page First Ref
    [Arguments]  ${url}  ${browser}
    Log     Creating WebDriver   WARN
    # Start Virtual Display    1920   1920
    ${options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys
    Call Method   ${options}   add_argument   --no-sandbox
    Call Method   ${options}   add_argument   --disable-setuid-sandbox
    Create WebDriver   Chrome   chrome_options=${options}
    Go To   ${url}

Open Browser And Go To Page
    [Arguments]  ${url}  ${browser}
    ${chrome_options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    test-type
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Create Webdriver    Chrome    chrome_options=${chrome_options}

    Go to  ${url}

