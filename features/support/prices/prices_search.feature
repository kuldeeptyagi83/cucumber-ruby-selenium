@Prices
Feature: Verify search on prices screens
#  Background:
#    Given User login with username "kuldeep1@mailinator.com" and password "Abcde@123"
#    And Market Prices page is opened
  @PriceDefault
  Scenario: Verify default search selection
    Given Market Prices page is opened
    Then Verify default search selection
     |Grid_Points | Schedule | Market_Type | TPB | TPF|
     |BEN2201     | NRS      | Energy      |  7  | 7  |
     |HAY2201     | 5min     |             |     |    |
     |OTA2201     |          |             |     |    |
  Scenario: Verify default search selection results
#    Given Market Prices page is opened
    When user click on refresh results button
    Then user see default search results




























