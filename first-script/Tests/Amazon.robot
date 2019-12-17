*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

# # Copy/paste the line below into Terminal to execute:
# robot -d Results Tests/Amazon.robot

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  chrome
    Wait Until Page Contains  Your Amazon.com
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "Ferrari 458"
    Click Link  xpath=//*[@id="search"]/div[1]/div[2]/div/span[4]/div[1]/div[1]/div/span/div/div/div[2]/h2/a
    Wait Until Page Contains  Back to results
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Add to your order
    Click Link  id=hlb-ptc-btn-native
    Wait Until Page Contains  No Thanks
    Close Browser

*** Keywords ***
