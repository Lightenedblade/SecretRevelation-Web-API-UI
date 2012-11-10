Feature: Bowsing Available Mods
  In order to select which mods I want to download
  As a user
  I want see which mods are available

  Scenario: Sort mods by table popularity
    Given I am on the mod table
    When I click on the popularity header
    Then The table should be sorted by popularity
