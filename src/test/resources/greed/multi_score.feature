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



  #Rule : Getting four ones increases score by 2000 (multiplies triple score(1000) by 2)

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

  #Rule : Getting four twos increases score by 400 (multiplies triple score(200) by 2)

  Scenario: Player has roll the dice and has at least four of a kind (1 to 6)
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 2 |
      | 2 |
      | 2 |
      | 2 |
      | 6 |
      | 3 |
    Then player's score should be 400

  #Rule : Getting four threes increases score by 600 (multiplies triple score(300) by 2)

  Scenario: Player has roll the dice and has at least four of a kind (1 to 6)
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 3 |
      | 3 |
      | 3 |
      | 4 |
      | 2 |
      | 3 |
    Then player's score should be 600

  #Rule : Getting four fours increases score by 800 (multiplies triple score(400) by 2)

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

   #Rule : Getting four fives increases score by 1000 (multiplies triple score(500) by 2)

  Scenario: Player has roll the dice and has at least four of a kind (1 to 6) with triple four
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 5 |
      | 5 |
      | 5 |
      | 5 |
      | 3 |
      | 3 |
    Then player's score should be 1000

    #Rule : Getting four sixes increases score by 1200 (multiplies triple score(600) by 2)

  Scenario: Player has roll the dice and has at least four of a kind (1 to 6) with triple four
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 6 |
      | 6 |
      | 6 |
      | 6 |
      | 3 |
      | 3 |
    Then player's score should be 1200

    #Rule : Getting five ones increases score by 4000 (multiplies triple score(1000) by 4)

  Scenario: Player has roll the dice and has at least a five of a kind (1 to 6) with triple four
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 1 |
      | 1 |
      | 1 |
      | 1 |
      | 1 |
      | 3 |
    Then player's score should be 4000

  #Rule : Getting five twos increases score by 800 (multiplies triple score(200) by 4)

  Scenario: Player has roll the dice and has at least a five of a kind (1 to 6) with triple four
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 2 |
      | 2 |
      | 2 |
      | 2 |
      | 2 |
      | 3 |
    Then player's score should be 800

   #Rule : Getting five threes increases score by 1200 (multiplies triple score(300) by 4)

  Scenario: Player has roll the dice and has at least a five of a kind (1 to 6) with triple four
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 3 |
      | 3 |
      | 3 |
      | 3 |
      | 6 |
      | 3 |
    Then player's score should be 1200

 #Rule : Getting five fours increases score by 1600 (multiplies triple score(400) by 4)

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

    #Rule : Getting five sixes increases score by 2400 (multiplies triple score(600) by 4)

  Scenario: Player has roll the dice and has at least a five of a kind (1 to 6) with triple four
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 6 |
      | 6 |
      | 6 |
      | 6 |
      | 6 |
      | 3 |
    Then player's score should be 2400

    #Rule : Getting six ones increases score by 8000 (multiplies triple score(1000) by 8)

  Scenario: Player has roll the dice and has at least a six of a kind (1 to 6)
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 1 |
      | 1 |
      | 1 |
      | 1 |
      | 1 |
      | 1 |
    Then  player's score should be 8000


    #Rule : Getting six twos increases score by 4800 (multiplies triple score(200) by 8)

  Scenario: Player has roll the dice and has at least a six of a kind (1 to 6)
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 2 |
      | 2 |
      | 2 |
      | 2 |
      | 2 |
      | 2 |
    Then  player's score should be 1600



#Rule : Getting six threes increases score by 2400 (multiplies triple score(300) by 8)

  Scenario: Player has roll the dice and has at least a six of a kind (1 to 6)
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 3 |
      | 3 |
      | 3 |
      | 3 |
      | 3 |
      | 3 |
    Then  player's score should be 2400


 #Rule : Getting six fours increases score by 3200 (multiplies triple score(600) by 8)

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

 #Rule : Getting six fives increases score by 4000 (multiplies triple score(500) by 8)

  Scenario: Player has roll the dice and has at least a six of a kind (1 to 6)
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 5 |
      | 5 |
      | 5 |
      | 5 |
      | 5 |
      | 5 |
    Then  player's score should be 4000

 #Rule : Getting six sixes increases score by 4800 (multiplies triple score(600) by 8)

  Scenario: Player has roll the dice and has at least a six of a kind (1 to 6)
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 6 |
      | 6 |
      | 6 |
      | 6 |
      | 6 |
      | 6 |
    Then  player's score should be 4800


