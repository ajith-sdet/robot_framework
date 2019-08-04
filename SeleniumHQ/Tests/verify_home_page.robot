*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Browser}  chrome
${url}  https://www.seleniumhq.org/


*** Test Cases ***
Verify home page navigation is successful
    [Tags]  Smoke
    open browser  ${url}  ${Browser}
    wait until page contains  What is Selenium?

    page should contain element  xpath=//a[contains(text(),"Download Selenium")]
    element text should be  //a[contains(text(),'Download Selenium')]  Download Selenium

    close browser


*** Keywords ***
