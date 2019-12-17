*** Settings ***
# to run script: robot -d Results Tests

*** Variables ***
@{MY_VAR} =  Hello, there  This is value 2  I am item 3

*** Test Cases ***
Variable demonstration
    Log  @{MY_VAR}[2]
    Log  @{MY_VAR}[1]
    Log  @{MY_VAR}[0]


Variable demonstration 2
    @{my_list_var} =  Create List  item 1  item 2  item 3
    Log  @{my_list_var}[1]
    Log  @{my_list_var}[0]