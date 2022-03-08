Feature: getting a TripleScore of any number of my dice faces (between 1 and 6) increases the score
    #Getting a triple of a number scores points to the player depending on the number
    #If it is a 1 then getting a triple score of ones [1,1,1] increases the score by 1000
    #If it is a 2 then getting a triple score of twos [2,2,2] increases the score by 200
    #If it is a 3 then getting a triple score of threes [3,3,3] increases the score by 300
    #If it is a 4 then getting a triple score of fours [4,4,4] increases the score by 400
    #If it is a 5 then getting a triple score of fives [5,5,5] increases the score by 500
    #If it is a 6 then getting a triple score of sixes [6,6,6] increases the score by 600




#Rule : Getting tripe ones increases score by 1000

  Scenario: Player has roll the dice and has at least a triple of 1
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 1 |
      | 1 |
      | 1 |
      | 2 |
      | 2 |
      | 3 |
    Then player's score should be 1000


#Rule : Getting tripe twos increases score by 200
  Scenario: Player has roll the dice and has at least a triple of 2
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 4 |
      | 2 |
      | 2 |
      | 2 |
      | 3 |
      | 3 |
    Then player's score should be 200

#Rule : Getting tripe threes increases score by 300
  Scenario: Player has roll the dice and has at least a triple of 3
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 4 |
      | 6 |
      | 3 |
      | 4 |
      | 3 |
      | 3 |
    Then player's score should be 300

#Rule : Getting tripe fours increases score by 400

  Scenario: Player has roll the dice and has at least a triple of 4
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 4 |
      | 2 |
      | 4 |
      | 4 |
      | 3 |
      | 3 |
    Then  player's score should be 400

#Rule : Getting tripe fives increases score by 500

  Scenario: Player has roll the dice and has at least a triple of 5
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 4 |
      | 5 |
      | 5 |
      | 5 |
      | 3 |
      | 3 |
    Then player's score should be 500

#Rule : Getting tripe sixes increases score by 600

  Scenario: Player has roll the dice and has at least a triple of 6
    Given  dice with player
    When player rolls the dice 6 times
    And gets these dice rolls
      | 4 |
      | 6 |
      | 6 |
      | 6 |
      | 3 |
      | 3 |
    Then  player's score should be 600

