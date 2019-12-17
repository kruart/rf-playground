*** Settings ***
Library  SeleniumLibrary


*** Variables ***


*** Test Cases ***
User can search for products
    Begin Web Test  http://amazon.com  firefox                      # passing two args
    @{url_and_browser} =  Set Variable  http://amazon.com  chrome   # define list
    Begin Web Test 2  @{url_and_browser}                            # passing list

*** Keywords ***
Begin Web Test
    [Arguments]  ${url}  ${browser}
    Open Browser  ${url}  ${browser}
    Close Browser

Begin Web Test 2
    [Arguments]  @{url_and_browser}
    Open Browser  @{url_and_browser}[0]  @{url_and_browser}[1]
    Close Browser