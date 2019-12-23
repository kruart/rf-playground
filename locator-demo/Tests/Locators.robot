*** Settings ***
Library  SeleniumLibrary
# robot -d ./Results  ./Tests/Locators.robot


*** Variables ***
${BROWSER} =  chrome
${URL} =  http://amazon.com


*** Test Cases ***
Should be able to do something
    Open Browser  ${URL}  ${BROWSER}
    Mouse Over  id=nav-link-accountList
    Click Link  default=/gp/registry/wishlist?ie=UTF8&ref_=nav_wishlist_create&triggerElementID=createList
    Sleep  5s
    Close Browser
