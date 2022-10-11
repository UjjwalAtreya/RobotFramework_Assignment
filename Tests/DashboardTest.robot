*** Settings ***
Documentation  Dashboard Search and Light/Dark mode test
Library  SeleniumLibrary
Resource  ../Resources/PageObject/KeywordDefinationFiles/LoginPage.robot
Resource  ../Resources/PageObject/KeywordDefinationFiles/Dashboard.robot
Resource  ../Resources/PageObject/KeywordDefinationFiles/Common.robot

*** Variables ***
${site_url}  https://talent-recruitment.test.bluestonepim.com/index.html
${browser}  Chrome

*** Test Cases ***
Verify if the user is able to search in the Dashboard
    [documentation]  This test case verifies if the user is able to search in dashoard page
    [tags]  Regression

    Opening Browser  ${site_url}  ${browser}
    Input Username
    Input Password
    Click Login
    Verify the search returns exact value
    close browser

Verify if user is able to swith from light to dark mode
    [documentation]  This test case verifies if a user is able to switch from light to dark mode
    [tags]  Regression

    Opening Browser   ${site_url}       ${browser}
    Input Username
    Input Password
    Click Login
    Switch to dark mode and verify
    close browser
