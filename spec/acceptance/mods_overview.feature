Feature: Overview Of Available Mods
  In order to select which mods I want to download
  As a user
  I want see which mods are available

  Scenario: Landing
    Given the following mod categories:
      | name             |
      | full conversion  |
      | world generation |
      | add-ons          |
      | item only        |
    When I visit the home page
    Then I should see the five most popular mods links
    And I should see the five highest rated mods links
    And I should see a link to the highest rated mods list
    And I should see a link to the most popular mods list
    And I should see a link for each category
