*** Variables ***
${NAVBAR_TEXTBOC_SELECTOR} =  xpath=//input[@id="twotabsearchtextbox"]
${NAVBAR_SUBMIT_BUTTON_SELECTOR} =  //input[@type="submit" and @class="nav-input"]
${SEARCH_RESULT_INDICATOR_SELECTOR} =  xpath=//span[contains(@data-component-type,"info-bar")]//span[contains(text(),"result")]
${RESULT_BOXES_SELECTOR} =  xpath=//div[@data-component-type="s-search-result"]
${RESULT_BOXES_SPONSORED_SELECTOR} =  xpath=//div[@data-component-type="s-search-result"]//span[@class="s-label-popover-default"]
