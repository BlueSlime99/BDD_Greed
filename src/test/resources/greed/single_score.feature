Feature: SingleScore
  Let see when will we have  Single Scores


  Scenario: Player has roll the dice and has at least a 1 in one of his shots which doesn't exceed 6
    Given  dice with player
    When player has rolled dice
      | 1 |
      | 4 |
      | 6 |
      | 2 |
      | 2 |
      | 3 |
    Then player's score should be 100



  Scenario: Player has roll the dice and has at least a 5 in one of his shots which doesn't exceed 6
    Given  dice with player
    When player has rolled dice
      | 4 |
      | 2 |
      | 5 |
      | 2 |
      | 3 |
      | 3 |
    Then player's score should be 50
