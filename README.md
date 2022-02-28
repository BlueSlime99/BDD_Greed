#Greed (Dice Game)

Greed class takes an arrayList of dice Rolls (6 dice rolls) and returns the result scored by the player

Points scored are defined like this :

    - getting a single one increases the result by (100)
    - getting a single five increases the result by (50)
    - getting triple ones [1,1,1] increases the result by (1000)
    - getting triple twos [2,2,2] increases the result by (200)
    - getting triple threes [3,3,3] increases the result by (300)
    - getting triple fours [4,4,4] increases the result by (400)
    - getting triple fives [5,5,5] increases the result by (500)
    - getting triple sixes [6,6,6] increases the result by (600)

    - getting four-of-a-kind multiplies Triple Score by 2
    - getting five-of-a-kind multiplies Triple Score by 4
    - getting six-of-a-kind multiplies Triple Score by 8

     - getting Three Pairs [2,2,3,3,4,4] increases the result by (800)

     - getting a Straight [1,2,3,4,5,6] increases the result by (1200)