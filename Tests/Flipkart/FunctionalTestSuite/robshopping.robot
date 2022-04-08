*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
home
    [Documentation]  home
    [Tags]  homepage
    start testcase
    sleep  1
    click button  xpath:/html/body/div/div/div/table/tbody/tr[1]/td/button

admin login
    [Documentation]  admin login
    [Tags]  admin login
    sleep  1
    input text  name:username  admin
    sleep  1
    input text  name:password  9875
    sleep  1
    click button  xpath:/html/body/form/div/div/div/table/tbody/tr[3]/td/button
    sleep  2

adding book
    [Documentation]  adding books
    [Tags]  add books
    input text  name:name       b6
    sleep  1
    input text  name:author     a6
    sleep  1
    input text  name:cat        c6
    sleep  1
    input text  name:price      699
    sleep  1
    input text  name:pub        p6
    sleep  1
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[6]/td/button
    sleep  7
    click element  xpath:/html/body/nav/div/div/ul/li[6]/a
    sleep  2
user register
    [Documentation]  user login
    [Tags]  user login
    click button  xpath:/html/body/div/div/div/table/tbody/tr[2]/td/button
    sleep  2
    input text  name:usname     u5
    sleep  1
    input text  name:mobileno     1234567899
    sleep  1
    input text  name:email     something@gmail.com
    sleep  1
    input text  name:address     XYZ street
    sleep  1
    input text  name:pass    pass5
    sleep  1
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[6]/td/button
    sleep  1


user login
    [Documentation]  user login
    [Tags]  user login
    input text  name:Uname      u1
    sleep  1
    input text  name:Upass      pass1
    sleep  1
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[3]/td/button
    sleep  7
    click element   xpath:/html/body/nav/div/div/ul/li[3]/a
    sleep  5
    stop testcase



*** Keywords ***
start testcase
    Open Browser  http://127.0.0.1:5000/  chrome
    maximize browser window

stop testcase
    close browser

