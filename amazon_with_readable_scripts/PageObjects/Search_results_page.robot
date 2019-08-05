*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify search containing result for search item
    wait until page contains  results for "${search_item}"

Click on the first search product
    click link  xpath=//div[@class="s-result-list s-search-results sg-row"]/child::div/div/div/div/div/div/div/div[2]/div/div/h2/a