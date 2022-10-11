*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/Testdata.py

*** Keywords ***
Input Username
    Input Text  ${LoginEmailInputBox}  ${Email}

Input Invalid Username
    input text   ${LoginEmailInputBox}    ${InvalidEmail}

Input Password
    Input Text  ${LoginPasswordInputBox}  ${Password}

Click Login
    Click Element  ${LoginButton}

Verify Error Message
    element text should be  ${PasswordErrorMessage}     ${ErrorMessage}

Verify invalid email message
    wait until element is visible  ${InvalidEmailMessage}       timeout=5
   element should be visible   ${InvalidEmailMessage}