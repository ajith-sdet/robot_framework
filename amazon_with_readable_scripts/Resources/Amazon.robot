# Containing all the keywords  needed for amazon web page.
*** Settings ***
Resource  ../PageObjects/TopNav.robot
Resource  ../PageObjects/Search_results_page.robot
Resource  ../PageObjects/Product_page.robot
Resource  ../PageObjects/cart_page.robot
Resource  ../PageObjects/Sign_in_page.robot

*** Keywords ***
Search for product
    TopNav.Searching for product in search bar
    TopNav.Submit button in search bar
    Search_results_page.Verify search containing result for search item

Add search product to cart
    Search_results_page.Click on the first search product
    Select Window  NEW
    Product_page.Verify product page is present
    Product_page.Click add to cart button
    cart_page.Verify cart page is present

Begin to checkout and verify user should signin
    cart_page.Click on proceed to buy
    Sign_in_page.Verify sign-in page after checkout when user is not logged in
    Sign_in_page.Verify create amazon account button is present


