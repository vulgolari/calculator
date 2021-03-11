***Settings***
Resource        base.robot

*** Test Cases ***

Scenario: Multiply 2 integers
    Given that I'm on the calculator home screen
    When I multiplying 2 by 9
    Then Result should equal 18

