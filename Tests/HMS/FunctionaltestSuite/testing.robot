*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
start
    [Documentation]  start
    [Tags]  start page
    start testcase
    sleep  1


admin login
    [Documentation]  admin login
    [Tags]  admin login
    sleep  1
    input text  name:username       admin
    sleep   1
    input text  name:password       12345
    sleep   1
    click button    xpath:/html/body/div/div/div/form/table/tbody/tr[3]/td/button
    sleep   2


adding patient
    [Documentation]  adding patient
    [Tags]  add patient
    input text  name:name       pat6
    sleep  1
    input text  name:mobileno       1236547895
    sleep  1
    input text  name:age        50
    sleep  1
    input text  name:address        qwedrft gyhutr
    sleep  1
    input text  name:dob        25012000
    sleep  1
    input text  name:place      delhi
    sleep  1
    input text  name:pincode        560080
    sleep  1
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[8]/td/button
    sleep  5


admin search
    [Documentation]  admin search
    [Tags]  admin search
    click element  xpath:/html/body/nav/div/div/ul/li[2]/a
    sleep  2
    input text  name:mobno      1236547895
    sleep  1
    click button    xpath:/html/body/form/div/div/div/table/tbody/tr[2]/td/button
    sleep  5
    click element   xpath:/html/body/nav/div/div/ul/li[5]/a


admin edit
    [Documentation]  admin edit
    [Tags]  admin edit
    input text  name:mobileeno      1236547895
    sleep   1
    input text  name:newname        name6
    sleep   1
    input text  name:newage            60
    sleep   1
    input text  name:newaddress     something2
    sleep   1
    input text  name:newplace       kerala
    sleep   1
    input text  name:newpincode     564679
    sleep   1
    click button    xpath:/html/body/div/div/div/form/table/tbody/tr[7]/td/button
    sleep   5

admin delete
    [Documentation]  admin delete
    [Tags]  admin delete
    click element   xpath:/html/body/nav/div/div/ul/li[4]/a
    sleep   1
    input text  name:mobno        1236547895
    sleep   1
    click button    xpath:/html/body/form/div/div/div/table/tbody/tr[2]/td/button
    sleep   5

logout
    [Documentation]  logout
    [Tags]  logout
    click element   xpath:/html/body/nav/div/div/ul/li[6]/a
    sleep   5
    stop testcase



*** Keywords ***
start testcase
    Open Browser  http://127.0.0.1:5000/  chrome
    maximize browser window

stop testcase
    close browser

