@LoginLogout
Feature: Login and Logout

#  Background: Enter login credentials
#    When User login with username "kuldeep1@mailinator.com" and password "Abcde@123"
  @Login
  Scenario: VerifyLogin.
    When User login with username and password
    Then User is logged-in
#    When User clicks on logout link
#    Then User should be logged-out successfully

  @Logout
  Scenario: VerifyLogout.
    Given User is logged-in
    When User clicks on logout link
    Then User should be logged-out successfully
#    When User login with username "kuldeep1@mailinator.com" and password "Abcde@123"
#    Then User is logged-in
#    When User clicks on logout link
#    Then User should be logged-out successfully
#  Scenario: Login and logout using data from yml
#    When I open WITS website
#    And I login using data from yml