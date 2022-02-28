package greed;

import java.util.ArrayList;
import java.util.HashSet;

public class Greed {

    Player player;

    public Greed(Player player) {
        this.player = player;
    }


    public void play(){
        int[] triple_scores = {0, 1000, 200, 300, 400, 500, 600};
        ArrayList<Integer> diceRoll = player.getDiceRoll();
        int result = 0;


        if(diceRoll.size()>6) throw new IllegalArgumentException("too many dice rolls : please limit to 6");

        if(containsStraight(diceRoll)) result += 1200;
        if(containsThreePairs(diceRoll)) result += 800;
        if(numberOfOccurences(diceRoll,1)<3) result+=100;
        if(numberOfOccurences(diceRoll,5)<3) result+=50;

        for(int i=0; i<diceRoll.size();i++){
            if(numberOfOccurences(diceRoll,i)==3) result+= triple_scores[i];
            if(numberOfOccurences(diceRoll,i)==4) result+= triple_scores[i]*2;
            if(numberOfOccurences(diceRoll,i)==5) result+= triple_scores[i]*4;
            if(numberOfOccurences(diceRoll,i)==6) result+= triple_scores[i]*8;
        }

        player.setScore(result);
    }


    public int numberOfOccurences(ArrayList<Integer> diceRoll, int instance) {
        int occurences = 0;
        for (Integer integer : diceRoll) {
            if (integer == instance) occurences++;
        }
        return occurences;
    }

    public boolean containsStraight(ArrayList<Integer> diceRoll){
        HashSet<Integer> straight = new HashSet<>(diceRoll);
        return straight.size() == 6;
    }

 public boolean containsThreePairs(ArrayList<Integer> diceRoll){
        HashSet<Integer> threePairs = new HashSet<>(diceRoll);
        int nbPairs = 0;

        if(threePairs.size()==3) {
            for (Integer threePair : threePairs) if (numberOfOccurences(diceRoll, threePair) == 2) nbPairs++;
        }
     return nbPairs == 3;
 }


}