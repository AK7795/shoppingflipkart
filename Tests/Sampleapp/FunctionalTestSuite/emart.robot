*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${admin_parameter}  admin
${pass1_parameter}  1234
${user_parameter}  user1@gmail.com
${pass2_parameter}  1111
${seller_parameter}  1@gmail.com
${pass3_parameter}  pass1
${mobile_parameter}  iphone12
${brand_parameter}  apple
${details_parameter}  Apple iPhone 12 (128GB ROM, 4GB RAM, MGJA3HN/A, Black)
${price_parameter}  60900




*** Test Cases ***

Home view
    [Documentation]  home page
    [Tags]  home
    start testcase
    sleep   2
    input text  name:searchproduct      maggi
    sleep   1
    click button    xpath:/html/body/nav[1]/div/div[1]/form/button
    sleep   4
    click element   xpath:/html/body/nav[1]/div/span/a
    sleep   2

Login admin Page test case
    [Documentation]  admin login page
    [Tags]  admin

    click element  xpath://html/body/nav[1]/div/div[2]/a[3]
    Input text  name:name  ${admin_parameter}
    sleep  1
    Input text  name:pass  ${pass1_parameter}
    sleep  1
    click button  xpath://html/body/div/div/div/form/table/tbody/tr[3]/td/button
    sleep  3


View Orders Page Test Case
    [Documentation]  admin view order
    [Tags]  orders
    click element  xpath://html/body/nav[4]/div/div/a[1]
    sleep  4

View Sellers Page Test Case
    [Documentation]  admin view seller
    [Tags]  sellers
    click element  xpath:/html/body/nav[3]/div/div/a[2]
    sleep  4

Emart Home Page Test case
    [Documentation]  Home
    [Tags]  Home Page
    click element  xpath://html/body/nav[1]/div/span/a
    sleep  1s

Seller Page Test case
    [Documentation]  Seller Login
    [Tags]  seller Page
    click element  xpath://html/body/nav[1]/div/div[2]/a[2]
    sleep  1s
    Input text  name:email  ${seller_parameter}
    sleep  1s
    Input text  name:pass  ${pass3_parameter}
    sleep  1s
    click button  xpath://html/body/div/div/div/form/table/tbody/tr[3]/td/button
    sleep  3s

Seller Mobile Test Case
    [Documentation]  Seller Login
    [Tags]  seller Page
    click element  xpath://html/body/nav[2]/div/div/div/button
    sleep  1s
    click element  xpath://html/body/nav[2]/div/div/div/ul/li[1]/a
    sleep  1s

Seller add Test Case
    [Documentation]  Add Product
    [Tags]  Add
    Input text  name:name  ${MOBILE_PARAMETER}
    sleep  1s
    Input text  name:brand  ${brand_parameter}
    sleep  1s
    Input text  name:det  ${details_parameter}
    sleep  1s
    Input text  name:price  ${price_parameter}
    sleep  1s


Delete Mobile Test Case
    [Documentation]  Delete Mobile
    [Tags]  Delete
    click element  xpath://html/body/nav[2]/div/div/div/button
    sleep  1s
    click element  xpath://html/body/nav[2]/div/div/div/ul/li[2]/a
    sleep  1s
    Input text  name:namedel  ${MOBILE_PARAMETER}
    sleep  1s
    click button  xpath://html/body/div/div/div/form/table/tbody/tr[2]/td/button
    sleep  3s

Buy grocery item test case
    [Documentation]  Buy grocery item
    [Tags]  Buy grocery item
    sleep   2
    click element   xpath:/html/body/nav[2]/div[1]/ul/li/a/img
    sleep   2
    click element   xpath:/html/body/div/div/div[3]/div/a
    sleep   2
    input text  name:bname       xyz
    sleep   1
    input text  name:email      something@gmail.com
    sleep   1
    input text  name:phone      1472583691
    sleep   1
    input text  name:add        X STREET Y CITY Z STATE
    sleep   1
    input text  name:pin        555555
    sleep   1
    click button    xpath:/html/body/div/div/form/table/tbody/tr[7]/td/a/button

    sleep   5
    stop testcase


*** Keywords ***
start testcase
    Open Browser  http://127.0.0.1:5000/  chrome
    maximize browser window

stop testcase
    close browser
