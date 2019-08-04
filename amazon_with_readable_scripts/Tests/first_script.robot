*** Settings ***
Documentation  First script modified to readable
Library  SeleniumLibrary

*** Variables ***
${Browser}  chrome
${search_item}  one plus cases

*** Test Cases ***
User must signin to checck out
    [Documentation]  First readable test to verify user must signin
    [Tags]  Smoke
    Begin web test
    Search for product
    Add search product to cart
    Begin to checkout and verify user should signin
    Close Test


*** Keywords ***
Begin web test
    open browser  http://www.amazon.in  ${Browser}
    wait until page contains  Your Amazon.in

Search for product
    INPUT TEXT  id=twotabsearchtextbox  ${search_item}
    click button  xpath=//div[@class="nav-search-submit nav-sprite"]//input[@class="nav-input"]
    wait until page contains  results for "${search_item}"

Add search product to cart
    click link  xpath=//div[@class="s-result-list s-search-results sg-row"]/child::div/div/div/div/div/div/div/div[2]/div/div/h2/a
    Select Window  NEW
    wait until page contains  Back to results
    click button  id=add-to-cart-button
    wait until page contains  Added to Cart

Begin to checkout and verify user should signin
    click link  xpath=//a[contains(text(),"Proceed to Buy")]
    wait until page contains  Login
    PAGE SHOULD CONTAIN ELEMENT  id=createAccountSubmit
    element text should be  id=createAccountSubmit  Create your Amazon account

Close Test
    close browser
