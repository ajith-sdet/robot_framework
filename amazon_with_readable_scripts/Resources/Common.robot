*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Browser}  chrome

*** Keywords ***
Begin web test
    open browser  http://www.amazon.in  ${Browser}
    wait until page contains  Your Amazon.in

Close Test
    close browser