*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LANDING_TEXT} =  Welcome!

*** Keywords ***
Navigate To
    Go To  ${URL.${ENVIRONMENT}}

Verify Page Loaded
    wait until page contains  ${LANDING_TEXT}