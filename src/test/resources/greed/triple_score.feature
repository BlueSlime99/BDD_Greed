Feature: TripleScore
  Let see when will we have the Triple Scores on our score



  Scenario: Player has roll the dice and has at least a triple of 1
    Given  dice with player
    When player has rolled dice
      | 1 |
      | 1 |
      | 1 |
      | 2 |
      | 2 |
      | 3 |
    Then player's score should be 1100



  Scenario: Player has roll the dice and has at least a triple of 2
    Given  dice with player
    When player has rolled dice
      | 4 |
      | 2 |
      | 2 |
      | 2 |
      | 3 |
      | 3 |
    Then player's score should be 200

  Scenario: Player has roll the dice and has at least a triple of 3
    Given  dice with player
    When player has rolled dice
      | 4 |
      | 6 |
      | 3 |
      | 4 |
      | 3 |
      | 3 |
    Then player's score should be 300


  Scenario: Player has roll the dice and has at least a triple of 4
    Given  dice with player
    When player has rolled dice
      | 4 |
      | 2 |
      | 4 |
      | 4 |
      | 3 |
      | 3 |
    Then  player's score should be 400


  Scenario: Player has roll the dice and has at least a triple of 5
    Given  dice with player
    When player has rolled dice
      | 4 |
      | 5 |
      | 5 |
      | 5 |
      | 3 |
      | 3 |
    Then player's score should be 550


  Scenario: Player has roll the dice and has at least a triple of 6
    Given  dice with player
    When player has rolled dice
      | 4 |
      | 6 |
      | 6 |
      | 6 |
      | 3 |
      | 3 |
    Then  player's score should be 600

