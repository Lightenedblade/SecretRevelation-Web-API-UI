@dev
Feature: Overview Of Available Mods
  In order to select which mods I want to download
  As a user
  I want to see which mods are available

  Scenario: Landing
    Given the following mod categories:
      | name             |
      | full conversion  |
      | world generation |
      | add-ons          |
      | item only        |
      ## HOW ABOUT THIS? --v
      #| id | name             |
      #| 1  | full conversion  |
      #| 2  | world generation |
      #| 3  | add-ons          |
      #| 4  | item only        |
    And the following mods:
      | id | name          | rating    | downloads |
      | 1  | red power 2   | 5         | 10000     |
      | 2  | mystcraft     | 5         | 4567      |
      | 3  | gregtech      | 4.4       | 700       |
      | 4  | forestry      | 3.125     | 1234      |
      | 5  | MFFS          | 1         | 12000     |
      | 6  | IC2           | 2         | 200       |
      | 7  | factorization | 3         | 16161     |
      | 8  | buildcraft    | 3         | 2222      |
      | 9  | railcraft     | 4.9       | 545455    |
      | 10 | portal gun    | 5         | 42000     |
    When I visit the home page
    Then I should see the five most popular mods links:
      | text          | path     |
      | red power 2   | /mods/1  |
      | railcraft     | /mods/9  |
      | portal gun    | /mods/10 |
      | factorization | /mods/7  |
      | MFFS          | /mods/5  |
    And I should see the five highest rated mods links
      | text        | path     |
      | red power 2 | /mods/1  |
      | railcraft   | /mods/9  |
      | portal gun  | /mods/10 |
      | mystcraft   | /mods/2  |
      | gregtech    | /mods/3  |
    And I should see a link to the highest rated mods list
    And I should see a link to the most popular mods list
    And I should see a link for each category
      ## HOW ABOUT THIS? --v
      #| path           | name             |
      #| /categories/1  | full conversion  |
      #| /categories/2  | world generation |
      #| /categories/3  | add-ons          |
      #| /categories/4  | item only        |
