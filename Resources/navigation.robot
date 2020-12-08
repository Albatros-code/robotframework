*** Settings ***
Library  SeleniumLibrary
Library  String
Resource  ./PageObjects/navigation.robot
Library  ./python_keywords.py

*** Keywords ***
Search for ${product_name}
    Wait Until Page Contains Element  ${NAVBAR_TEXTBOC_SELECTOR}
    Input Text  ${NAVBAR_TEXTBOC_SELECTOR}  ${product_name}
    Click Element  ${NAVBAR_SUBMIT_BUTTON_SELECTOR}

Check results count
    ${results_text}=  Get result string

    ${results_all_count}=  Get Element Count  ${RESULT_BOXES_SELECTOR}
    ${results_sponsored_count}=  Get Element Count  ${RESULT_BOXES_SPONSORED_SELECTOR}
    ${results_count}=  Evaluate  ${results_all_count}-${results_sponsored_count}
    Should Be Equal  ${results_count}  ${results_text}

Get result string
    ${results_text}=  Get Text  ${SEARCH_RESULT_INDICATOR_SELECTOR}
    ${results_text}=  Get Results From String  ${results_text}
    [return]  ${results_text}
