*** Settings ***
Library  SeliniumLibrary
*** Keywords ***
start testcase
    Open Browser  ${url}  chrome
    maximize browser window
stop testcase
    close browser
