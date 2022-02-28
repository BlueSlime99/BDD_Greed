Feature: MultiScore
  Let see when will we have to Multiply Score to gain more

  Scenario: Player has roll the dice and has at least four of a kind (1 to 6)
    Given  dice with player
    When player has rolled dice
      | 1 |
      | 1 |
      | 1 |
      | 1 |
      | 2 |
      | 3 |
    Then player's score should be 4200



  Scenario: Player has roll the dice and has at least four of a kind (1 to 6) with triple four
    Given  dice with player
    When player has rolled dice
      | 4 |
      | 4 |
      | 4 |
      | 4 |
      | 3 |
      | 3 |
    Then player's score should be 800

  Scenario: Player has roll the dice and has at least a five of a kind (1 to 6) with triple four
    Given  dice with player
    When player has rolled dice
      | 4 |
      | 4 |
      | 4 |
      | 4 |
      | 4 |
      | 3 |
    Then player's score should be 3200


  Scenario: Player has roll the dice and has at least a six of a kind (1 to 6)
    Given  dice with player
    When player has rolled dice
      | 4 |
      | 4 |
      | 4 |
      | 4 |
      | 4 |
      | 4 |
    Then  player's score should be 25600


