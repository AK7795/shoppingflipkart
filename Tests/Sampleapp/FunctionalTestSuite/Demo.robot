*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${search_parameter}  Harman
${url}  https://www.google.com/

*** Test Cases ***
login page test case
    [Documentation]  login for user
    [Tags]  user
    Log  hello

Registration Page test case
    [Documentation]  registration page for user
    [Tags]  user
    Log  welcome

Dashboard testcase
    Log  Dash

Google testcase
    [Documentation]  google test
    Open Browser  ${url}  chrome
    #Input Text  name:q  ${search_parameter}
    search data
    Submit form
    Close Browser

*** Keywords ***
search data
    Input Text  name: q  ${search_parameter}
