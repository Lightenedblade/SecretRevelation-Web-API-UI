Feature: Sort The Mods Table By Ascending Or Descending
  In order to sort the mods list
  As a browsing user
  I want to be able to click on the popularity and rating headers to sort respectively
    and I want to be able to click on the currently sorted header to change ascending or descending order

  Scenario: Sort rating by ascending from descending
    Given the table is sorted by rating in descending order
    When I click on the rating header
    Then the table should be sorted by rating in ascending order

  Scenario: Sort rating by descending from ascending
    Given the table is sorted by rating in ascending order
    When I click on the rading header
    Then the table should be sorted by rating in descending order

  Scenario: Sort populariy by ascending from descending
    Given the table is sorted by popularity in ascending order
    When I click on the rading header
    Then the table should be sorted by popularity in descending order

  Scenario: Sort popularity by descending from descending
    Given the table is sorted by popularity in descending order
    When I click on the rading header
    Then the table should be sorted by popularity in ascending order
