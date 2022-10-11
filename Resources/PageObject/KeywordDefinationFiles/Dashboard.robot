*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/Testdata.py

*** Keywords ***
Verify Login is successful
    wait until element is visible  ${SearchBox}
    element should be visible  ${SearchBox}    timeout=5

LogOut
    click element  ${userIcon}
    click element  ${LogoutButton}

Verify Logout is successful
    wait until element is visible  ${WelcomeText}
    element should be visible  ${WelcomeText}

Verify the search returns exact value
    wait until element is visible  ${SearchInputBox}    timeout=5
    input text  ${SearchInputBox}  ${SearchKeyWord}
    sleep  2s
    press keys   None    BACKSPACE
    element should contain  ${SearchResult}    ${SearchKeyWord}

Switch to dark mode and verify
    wait until element is visible  ${LightModeIcon}     timeout=5
    sleep  1s
    click element  ${LightModeIcon}
    sleep  1s
    element should not be visible    ${LightModeIcon}