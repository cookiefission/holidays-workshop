Feature: Holiday Search

  Scenario: Search for destination
    Given I am on the home page
    And I type a destination into the search bar
    And I click search
    Then I see expected search results
