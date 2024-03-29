Feature: Test login functionality

  @smoke
  Scenario Outline: Check login is successful with valid credential
    Given User is on login page
    When user enters <username> and <password>
    And Click on login button
    Then User is navigated to the homepage

    @valid
    Examples: 
      | username | password |
      | Admin    | admin123 |

    @invalid
    Examples: 
      | username | password |
      | admin123 | admin456 |
