Feature: getting a straight (on my 6 dice rolls I get one number of each)
  #Getting a straight [1,2,3,4,5,6] should increase out score by 1200

  Scenario: Player has roll the dice and has a straight
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 1 |
      | 2 |
      | 3 |
      | 4 |
      | 5 |
      | 6 |
    Then player's score should be 1350
