*** Settings ***
Documentation    Revision Test Suite
Library  SeleniumLibrary
Resource  ../Resources/common.robot
Resource  ../Resources/navigation.robot


*** Variables ***
${BROWSER} =  chrome
${URL} =  https://www.amazon.com
@{BROWSERS} =  chrome  firefox


*** Test Cases ***
First revision test
    [Tags]    DEBUG
    FOR  ${browser}  IN  @{BROWSERS}
        Common.Open Browser And Go To Page  ${URL}  ${browser}
        Sleep  2s
        Close Browser
    END

Second revision test
    Open Browser And Go To Page  ${URL}  ${BROWSERS[0]}
    Search for Salomon Speed Cross 5
    Check results count
    # Sleep  2s
    Close Browser


*** Keywords ***
Provided precondition
    Setup system under test