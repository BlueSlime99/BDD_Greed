package greed;

import java.util.ArrayList;
import java.util.HashSet;

public class Greed {

    Player player;

    public Greed(Player player) {
        this.player = player;
    }


    public void play(){
        int [] occurences = new int [7];
        ArrayList<Integer> diceRoll = player.getDiceRoll();

        if(diceRoll.size()>6) throw new IllegalArgumentException("too many dice rolls : please limit to 6");

        int result = 0;
        if(containsStraight(diceRoll)) result += 1200;
        if (diceRoll.contains(1)) result += 100;
        if (diceRoll.contains(5)) result += 50;
        if(containsThreePairs(diceRoll)) result += 800;

        for (int i=0;i<diceRoll.size();i++) {
            calculatOccurences(diceRoll.get(i), occurences);
            int integer = diceRoll.get(i);
            int numberofOccurences = getOccurence(occurences, integer);
            if(diceRoll.get(i)>6) throw new IllegalArgumentException("argument out of bonds : dice rolls takes only numbers between 1 and 6 ");
            if (numberofOccurences >= 3 && integer == 1) result += 1000;
            if (numberofOccurences == 3 && integer != 1 ) result += 100 * integer;
            result = check_multiple_kind(numberofOccurences, result);

        }
        player.setScore(result);
    }


    public int check_multiple_kind(int numberofOccurences, int result){
            int resultUpdate = result;
            if(numberofOccurences==4) resultUpdate *=2;
            if(numberofOccurences==5) resultUpdate *=4;
            if(numberofOccurences==6) resultUpdate *=8;

            return resultUpdate;
    }




    public int numberOfOccurences(ArrayList<Integer> diceRoll, int instance) {
        int occurences = 0;
        for (Integer integer : diceRoll) {
            if (integer == instance) occurences++;
        }
        return occurences;
    }

    public int [] calculatOccurences(int diceRoll, int [] updateOccurences) {

        updateOccurences[diceRoll]++;
        return updateOccurences;
    }

    public int getOccurence(int [] occurences, int instance){

        return occurences[instance];
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