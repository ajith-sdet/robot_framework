*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Searching for ${search_item} in search bar
    INPUT TEXT  id=twotabsearchtextbox  ${search_item}

Submit button in search bar
    click button  xpath=//div[@class="nav-search-submit nav-sprite"]//input[@class="nav-input"]