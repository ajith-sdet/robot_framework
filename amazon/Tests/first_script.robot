*** Settings ***
Documentation  First script
Library  SeleniumLibrary

*** Variables ***
${Browser}  chrome


*** Test Cases ***
User must signin to checck out
    [Documentation]  First test to verify user must signin
    [Tags]  Smoke
    open browser  http://www.amazon.in  ${Browser}
    wait until page contains  Your Amazon.in
    INPUT TEXT  id=twotabsearchtextbox  Ferrari 458
    click button  xpath=//div[@class="nav-search-submit nav-sprite"]//input[@class="nav-input"]
    wait until page contains  results for "Ferrari 458"
    click link  xpath=//div[@class="a-section a-spacing-medium"]/div[2]/div[2]/div/div/h2/a/span[text()="ToysCentral Ferrari 458 Speciale A 1:24 Scale Remote Controlled Car, Officially Licensed Rastar Model, Red"]/parent::a
    Select Window  NEW
    wait until page contains  Back to results
    click button  id=add-to-cart-button
    wait until page contains  Added to Cart

    click link  xpath=//a[contains(text(),"Proceed to Buy")]
    wait until page contains  Login
    PAGE SHOULD CONTAIN ELEMENT  id=createAccountSubmit
    element text should be  id=createAccountSubmit  Create your Amazon account

    close browser

*** Keywords ***

