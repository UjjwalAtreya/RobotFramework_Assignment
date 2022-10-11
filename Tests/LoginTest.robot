*** Settings ***
Documentation  Successful/Unsuccesful Login Tests
Library  SeleniumLibrary
Resource  ../Resources/PageObject/KeywordDefinationFiles/LoginPage.robot
Resource  ../Resources/PageObject/KeywordDefinationFiles/Dashboard.robot
Resource  ../Resources/PageObject/KeywordDefinationFiles/Common.robot

*** Variables ***
${site_url}  https://talent-recruitment.test.bluestonepim.com/index.html
${browser}  Chrome

*** Test Cases ***
Verify Successful Login to TalentRecruitment (BlueStone PIM)
    [documentation]  This test case verifies that the user is able to successfully Login and Logout
    [tags]  Regression

    Opening Browser  ${site_url}  ${browser}
    Input Username
    Input Password
    Click Login
    Verify Login is successful
    LogOut
    Verify Logout is successful
    Close Browser

Verify Error Message when password is left blank
    [documentation]  This test case will verify the error message when password is null
    [tags]  Regression

    Opening Browser  ${site_url}     ${browser}
    Input Username
    Click Login
    Verify Error Message
    close browser

Verify Invalid email message when invalid domain email is passed
    [documentation]  This test case will verify the invalid email if invalid domain email is passed
    [tags]  Regression

    Opening Browser  ${site_url}    ${browser}
    Input Invalid Username
    Input Password
    Click Login
    Verify invalid email message
    close browser
*** Keywords ***