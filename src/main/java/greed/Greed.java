package greed;

import java.util.ArrayList;
import java.util.HashSet;

public class Greed {

    final Player player;

    public Greed(Player player) {
        this.player = player;
    }


    /**
     * method that returns the score of the diceRolls made the player
     */
    public void play(){
        int[] triple_scores = {0, 1000, 200, 300, 400, 500, 600};
        ArrayList<Integer> diceRoll = player.getDiceRoll();
        int result = 0;


        if(diceRoll.size()!=6) throw new IllegalArgumentException("please make 6 dice rolls");

        if(containsStraight(diceRoll)) result += 1200;
        if(containsThreePairs(diceRoll)) result += 800;
        if(numberOfOccurences(diceRoll,1)<3 && numberOfOccurences(diceRoll,1)>0) result+=100;
        if(numberOfOccurences(diceRoll,5)<3 && numberOfOccurences(diceRoll,5)>0) result+=50;

        for(int i=1; i<= diceRoll.size();i++){
            if(numberOfOccurences(diceRoll,i)==3) result+= triple_scores[i];
            if(numberOfOccurences(diceRoll,i)==4) result+= triple_scores[i]*2;
            if(numberOfOccurences(diceRoll,i)==5) result+= triple_scores[i]*4;
            if(numberOfOccurences(diceRoll,i)==6) result+= triple_scores[i]*8;
        }
        player.setScore(result);
    }


    /**
     * @return number of occurences of @param instance in @param diceRoll
     */
    public int numberOfOccurences(ArrayList<Integer> diceRoll, int instance) {
        int occurences = 0;
        for (Integer integer : diceRoll) {
            if (integer == instance) occurences++;
        }
        return occurences;
    }

    /**
     * @return a boolean : if our arrayList diceRoll elements are all distinct
     * using hashSet and checking if the hashSet size is equal to the diceRoll arrayList size
     */
    public boolean containsStraight(ArrayList<Integer> diceRoll){
        HashSet<Integer> straight = new HashSet<>(diceRoll);
        return straight.size() == 6;
    }

    /**
     * @return a boolean : if our arrayList diceRoll contains three pairs
     * using a hashSet and checking if it's size is equal to Three
     * and checking if the occurences of all the hashSet distinct elements are all 2 in the diceRoll arrayList
     */
    public boolean containsThreePairs(ArrayList<Integer> diceRoll){
        HashSet<Integer> threePairs = new HashSet<>(diceRoll);
        int nbPairs = 0;

        if(threePairs.size()==3) {
            for (Integer threePair : threePairs) if (numberOfOccurences(diceRoll, threePair) == 2) nbPairs++;
        }
        return nbPairs == 3;
    }
}