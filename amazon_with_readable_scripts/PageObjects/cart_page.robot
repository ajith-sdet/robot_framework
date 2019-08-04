*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify cart page is present
    wait until page contains  Added to Cart

Click on proceed to buy
    click link  xpath=//a[contains(text(),"Proceed to Buy")]

