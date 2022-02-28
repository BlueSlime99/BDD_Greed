# Greed (Dice Game)

Greed is a dice game, a player rolls 6 dices and gets a score according to the numbers he gets for these 6 dice rolls.

## Scoring rules

Points scored are defined like this :

### single numbers : no points scored unless if it is a one or a five
    - getting a single one increases the final score by (100)
    - getting a single five increases the final score by (50)

### pairs : no points scored if number of pairs is less than three, if it is ones pair : 100 scored and if a fives one : 50 scored
    - getting Three Pairs [2,2,3,3,4,4] increases the result by (800)

### triples :
    - getting triple ones [1,1,1] increases the final score by (1000)
    - getting triple twos [2,2,2] increases the score by (200)
    - getting triple threes [3,3,3] increases the final score by (300)
    - getting triple fours [4,4,4] increases the final score by (400)
    - getting triple fives [5,5,5] increases the final score by (500)
    - getting triple sixes [6,6,6] increases the final score by (600)

### four / five or six of a kind multiplies the triple score by a factor of 2
    - getting four-of-a-kind multiplies Triple Score by 2
    - getting five-of-a-kind multiplies Triple Score by 4
    - getting six-of-a-kind multiplies Triple Score by 8

### getting a straight :
     - getting a Straight [1,2,3,4,5,6] increases the final score by (1200)

## Usage :
    our game contains three classes : Greed, Player and an App class for testing main method

```java

// arrayList of dice rolls : size of 6 
ArrayList<Integer> diceRoll = new ArrayList<>();
        // add numbers to diceRoll : corresponding to the numbers got while throwing a dice
        diceRoll.add(1); 
        diceRoll.add(1);
        diceRoll.add(1);
        diceRoll.add(1);
        diceRoll.add(2);
        diceRoll.add(3);

        // init a new Player with the arrayList of diceRolls above 
        Player player = new Player(diceRoll);
        // set a new greed class instance with the player
        Greed greed = new Greed(player);
        // greed play method returns the score made by the player calculated with the rules above
        greed.play();

```

## Project includes features written with guerkin for sceanarios tests 
