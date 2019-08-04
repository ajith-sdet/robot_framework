*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Browser}  chrome
${url}  https://www.seleniumhq.org/


*** Test Cases ***
Verify project page navigation is successful
    [Tags]  Smoke
    open browser  ${url}  ${Browser}
    wait until page contains  What is Selenium?
    click link  xpath=//li[@id="menu_projects"]//a[contains(text(),"Projects")]

    wait until page contains  Selenium Projects
    page should contain element  xpath=//a[contains(text(),"edit this page")]
    element text should be  xpath=//a[contains(text(),"edit this page")]  edit this page
    title should be  Selenium Projects


    close browser


*** Keywords ***
