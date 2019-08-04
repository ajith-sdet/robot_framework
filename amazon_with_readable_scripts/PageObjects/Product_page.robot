*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify product page is present
    wait until page contains  Back to results

Click add to cart button
    click button  id=add-to-cart-button