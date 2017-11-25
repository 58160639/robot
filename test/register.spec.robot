*** Settings ***
Library         SeleniumLibrary
Suite teardown  Close All Browsers

*** Test Cases ***
Check all required fields in registration form
    Open Browser                    http://bit.ly/2BajZDe   chrome
    Click Element                   id=btn_submit
    Wait Until Page Contains        The Email field is required.
    Wait Until Page Contains        The Password field is required.
    Wait Until Page Contains        The Re-type Password field is required.
    Wait Until Page Contains        The Name field is required.

Register successfully when input valid data
    Open Browser                    http://bit.ly/2BajZDe      chrome
    Input Text      id=email        58160639@go.buu.ac.th
    Input Password  id=password     Sirirat1
    Input Password  id=repassword   Sirirat1
    Input Text      id=name         Sirirat
    Click Element   id=btn_submit   
    Wait Until Page Contains        58160639@go.buu.ac.th