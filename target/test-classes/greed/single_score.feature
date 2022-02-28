Feature: Getting a single one or a single five in our 6 dice rolls increases the score
  # Single scoring numbers are only one and five, others [2,3,4,6] if got doesn't increase our score.
  # Getting a single one in 6 dice rolls and no fives should increase our score by 100.
  # Getting a single five in 6 dice rolls and no ones should increase our score by 50.
  # Getting a two, three, four, or six should not increase out score.

  Scenario: Player rolled the dice 6 times and gets a single one in his 6 rolls and no fives
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 1 |
      | 4 |
      | 6 |
      | 2 |
      | 2 |
      | 3 |
    Then player's score should be 100



  Scenario: Player rolled the dice 6 times and gets a single five in his 6 rolls and no ones
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 4 |
      | 2 |
      | 5 |
      | 2 |
      | 3 |
      | 3 |
    Then player's score should be 50

Scenario: Player rolled the dice 6 times and gets a single one and a single five in his 6 rolls and no ones
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 1 |
      | 2 |
      | 5 |
      | 2 |
      | 3 |
      | 3 |
    Then player's score should be 150
