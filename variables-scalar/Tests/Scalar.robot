*** Settings ***


*** Variables ***
${MY_VAR} =  Hello there

*** Test Cases ***
Set a variable in the test case
    [Tags]  Current
    ${my_new_var} =  Set Variable  Some data
    Log  ${my_new_var}

Variable demonstration
    Log  ${MY_VAR}

Variable demonstration 2
    Log  ${MY_VAR}


*** Keywords ***
