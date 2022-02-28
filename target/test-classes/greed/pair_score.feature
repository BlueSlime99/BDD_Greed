Feature: getting a Pair score of any number of my dice faces (between 1 and 6)
  #Getting a pair of ones increase our score only by 100
  #Getting a pair score of twos should not increase our score
  #Getting a pair score of threes should not increase our score
  #Getting a pair score of fours should not increase our score
  #Getting a pair score of fives should increase our score only by 50
  #Getting a pair score of sixes should not increase our score
  #Getting a double pair score (not of ones and fives) should not increase our score
  #Getting three pairs score  should increase my score by 800

  Scenario: Player has roll the dice and has a ones pair
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 1 |
      | 1 |
      | 2 |
      | 4 |
      | 6 |
      | 3 |
    Then player's score should be 100

  Scenario: Player has roll the dice and has a fives pair
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 5 |
      | 5 |
      | 2 |
      | 4 |
      | 6 |
      | 3 |
    Then player's score should be 50

  Scenario: Player has roll the dice and has a ones pair
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 1 |
      | 1 |
      | 2 |
      | 4 |
      | 6 |
      | 3 |
    Then player's score should be 100

  Scenario: Player has roll the dice and gets twos pairs (none of ones nor fives)
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 2 |
      | 3 |
      | 2 |
      | 6 |
      | 4 |
      | 3 |
    Then player's score should be 0

Scenario: Player has roll the dice and gets three pairs
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 2 |
      | 3 |
      | 2 |
      | 4 |
      | 4 |
      | 3 |
    Then player's score should be 800

Scenario: Player has roll the dice and gets three pairs with one pair of ones
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 2 |
      | 3 |
      | 2 |
      | 1 |
      | 1 |
      | 3 |
    Then player's score should be 900

