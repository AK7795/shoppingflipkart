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
    input text  name:name       b7
    sleep  1
    input text  name:author     a7
    sleep  1
    input text  name:cat        c7
    sleep  1
    input text  name:price      789
    sleep  1
    input text  name:pub        p7
    sleep  1
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[6]/td/button
    sleep  7


admin search
    [Documentation]  admin search
    [Tags]  admin search
    click element  xpath:/html/body/nav/div/div/ul/li[2]/a
    sleep  2
    input text  name:bname      b2
    sleep  1
    click button    xpath:/html/body/form/div/div/div/table/tbody/tr[2]/td/button
    sleep  5

admin delete
    [Documentation]  admin delete
    [Tags]  admin delete
    click element   xpath:/html/body/nav/div/div/ul/li[4]/a
    sleep   1
    input text  name:namedel        b7
    sleep   1
    click button    xpath:/html/body/div/div/div/form/table/tbody/tr[2]/td/button
    sleep   5

admin edit
    [Documentation]  admin edit
    [Tags]  admin edit
    click element   xpath:/html/body/nav/div/div/ul/li[5]/a
    sleep   1
    input text  name:oldname        b2
    sleep   1
    input text  name:newname        book2
    sleep   1
    input text  name:newauthor      author2
    sleep   1
    input text  name:newcat     cat2
    sleep   1
    input text  name:newprice       666
    sleep   1
    input text  name:newpub     pub2
    sleep   1
    click button    xpath:/html/body/div/div/div/form/table/tbody/tr[7]/td/button
    sleep   5
    click element   xpath:/html/body/nav/div/div/ul/li[7]/a
    sleep   5
    click element   xpath:/html/body/nav/div/div/ul/li[6]/a
    sleep   6


user register
    [Documentation]  user reg
    [Tags]  user reg
    click button  xpath:/html/body/div/div/div/table/tbody/tr[2]/td/button
    sleep  2
    input text  name:usname     user5
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
    input text  name:Uname      something@gmail.com
    sleep  1
    input text  name:Upass      pass5
    sleep  1
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[3]/td/button
    sleep  7


user search
    [Documentation]  user search
    [Tags]  user search
    click element   xpath:/html/body/nav/div/div/ul/li[2]/a
    sleep   2
    input text  name:ubname     book3
    sleep   1
    click button    xpath:/html/body/form/div/div/div/table/tbody/tr[2]/td/button
    sleep   5
    click element   xpath:/html/body/nav/div/div/ul/li[3]/a

    sleep   4
    stop testcase



*** Keywords ***
start testcase
    Open Browser  http://127.0.0.1:5000/  chrome
    maximize browser window

stop testcase
    close browser

