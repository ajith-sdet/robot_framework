*** Settings ***
Documentation  In this script, moved keywords to resources file and referencing it
Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot
Test Setup  Begin web test
Test Teardown  Close Test


*** Variables ***

${search_item}  one plus cases

*** Test Cases ***
User must signin to checck out
    [Documentation]  First readable test to verify user must signin
    [Tags]  current
    Search for product
    Add search product to cart
    Begin to checkout and verify user should signin

