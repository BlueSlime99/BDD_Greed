Feature: MultiScore : Getting four, five or six of a kind in my total dice rolls
  # my triple scores are : {1000 : for [1,1,1],
                            #200 : for [2,2,2],
                            #300 : for [3,3,3],
                            #400 : for [4,4,4],
                            #500 : for [5,5,5],
                            #600 : for [6,6,6] }

  #Getting four of a kind should multiply the triple score of this kind by 2
  #Getting five of a kind should multiply the triple score of this kind by 4
  #Getting six of a kind should multiply the triple score of this kind by 8

  Scenario: Player has roll the dice and has at least four of a kind (1 to 6)
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 1 |
      | 1 |
      | 1 |
      | 1 |
      | 2 |
      | 3 |
    Then player's score should be 2000


  Scenario: Player has roll the dice and has at least four of a kind (1 to 6) with triple four
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 4 |
      | 4 |
      | 4 |
      | 4 |
      | 3 |
      | 3 |
    Then player's score should be 800

  Scenario: Player has roll the dice and has at least a five of a kind (1 to 6) with triple four
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 4 |
      | 4 |
      | 4 |
      | 4 |
      | 4 |
      | 3 |
    Then player's score should be 1600


  Scenario: Player has roll the dice and has at least a six of a kind (1 to 6)
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 4 |
      | 4 |
      | 4 |
      | 4 |
      | 4 |
      | 4 |
    Then  player's score should be 3200


