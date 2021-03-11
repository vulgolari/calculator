***Settings***
Library     AppiumLibrary

***Variables***

${first_number}           accessibility_id=2
${operator}               accessibility_id=Multiplication
${second_number}          accessibility_id=9 
${result}                 id=com.sec.android.app.popupcalculator:id/calc_tv_result

*** Keywords ***

# Access the application on the device
Given that I'm on the calculator home screen
    Open Application            http://localhost:4723/wd/hub
    ...                         automationName=UiAutomator2
    ...                         platformName=Android
    ...                         deviceName=SM_G973F
    ...                         udid=RX8M404LMGX
    Click element               accessibility_id=Calculator
    Is Keyboard Shown 

# Performs operator selection (multiplication) and selects numbers (2 and 9)
When I multiplying 2 by 9
    Click Element               ${first_number} 
    Click Element               ${operator}
    Click Element               ${second_number}

# Displays the result of the operation and take a screen print
Then Result should equal 18
    Element Text Should Be      ${result}    18
    Capture Page Screenshot
    Quit Application
    

# Displays the result of the operation and take a screen print
Then Result should equal 25
    Element Text Should Be      ${result}    25
    Capture Page Screenshot
    Close Application
