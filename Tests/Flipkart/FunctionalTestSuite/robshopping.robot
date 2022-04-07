*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${search_for}  flipkart
${url}  https://www.google.com/

*** Test Cases ***
Google search
    [Documentation]  google search
    [Tags]  google
    start testcase
    input text  name:q  ${search_for}
    submit form
    click element  class:LC20lb

Flipkart search
    [Documentation]  flipkart search products
    [Tags]  flipkart
    sleep  2s
    click button  class:_2KpZ6l
    input text  name:q  Iphone 13
    click button  class:L0Z3Pu
    sleep  2s


Flipkart selection
    [Documentation]  flipkart search products
    [Tags]  flipkart
    click element  xpath=/html/body/div/div/div[3]/div[1]/div[2]/div[3]/div/div/div/a/div[2]/div[1]/div[1]
    sleep  2s


Flipkart buy product
    [Documentation]  flipkart buy products
    [Tags]  flipkart
    switch window  title:APPLE iPhone 13 ( 128 GB GB Storage, 0 GB RAM ) Online at Best Price On Flipkart.com
    click element  xpath=/html/body/div[1]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[2]/form/button
    sleep  3s


Flipkart buy details
    [Documentation]  flipkart buyer detials
    [Tags]  flipkart
    input text  class:_2IX_2-  something@gmail.com
    sleep  2s
    click element  xpath=/html/body/div[1]/div/div[2]/div/div[1]/div[1]/div/div/div/div/div[1]/div/form/div[3]/button/span
    input text  class:_2IX_2-  123456
    click element  xpath=/html/body/div[1]/div/div[2]/div/div[1]/div[1]/div/div/div/div/div[1]/div/form/div[4]/button
    sleep  5s
    stop testcase



*** Keywords ***
start testcase
    Open Browser  ${url}  chrome
    maximize browser window

stop testcase
    close browser

flipkart testcase
