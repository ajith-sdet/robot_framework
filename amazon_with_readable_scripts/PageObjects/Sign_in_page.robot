*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify sign-in page after checkout when user is not logged in
    wait until page contains  Login

Verify create amazon account button is present
    PAGE SHOULD CONTAIN ELEMENT  id=createAccountSubmit
    element text should be  id=createAccountSubmit  Create your Amazon account