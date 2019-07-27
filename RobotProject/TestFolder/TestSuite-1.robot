*** Settings ***

Suite Setup        Log    I am insdie Test Suite Setup
Suite Teardown     Log    I am inside Test Suite Teardown 
Test Setup         Log    I am inside Test Setup
Test Teardown      Log    I am after Test Teardown

Default Tags    sanity


Library    SeleniumLibrary    
*** Test Cases ***
MyFirstTest
    [Tags]    smoke
    Log    Hello World...    
    
MySecondTest    
    [Tags]    regression
    Log    I am in second test
   
MyThirdTest
    Log    I am in third test
    
# FirstSeleniumTest
    # Open Browser    http://www.google.com    chrome
    # Set Browser Implicit Wait    5
    # Input Text    name=q    Automation step by step
    # Press Keys    name=q    ENTER
    # # Click Button    name=btnk
    # Sleep    2    
    # Close Browser
    # Log    Test Completed
    
# SampleLoginTest
    # [Documentation]    This is a smple login test
    # Open Browser      ${URL}    chrome
    # Set Browser Implicit Wait    5
    # #Input Text        id=txtUsername    @{CREDENTIALS}[0]
    # #Input Password    id=txtPassword    @{CREDENTIALS}[1]
    
    # LoginKW    
    # Click Element     id=welcome    
    # Click Element     link=Logout    
    # Close Browser
    
    # Log               Test Completed    
    # Log               This test was executed by %{username} on %{os}
    
    
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin             admin123
&{LOGINDATA}      username=Admin    password=admin123

*** Keywords ***
LoginKW
    Input Text        id=txtUsername    @{CREDENTIALS}[0]
    Input Password    id=txtPassword    &{LOGINDATA}[password]
    Click Button      id=btnLogin 

