package greed;

import java.util.ArrayList;

public class Player {
    int score;
    ArrayList<Integer> diceRoll;


    public Player(ArrayList<Integer> diceRoll ){
        this.diceRoll = diceRoll;
        score = 0;
    }

    public ArrayList<Integer> getDiceRoll() {
        return diceRoll;
    }

    public void setDiceRoll(ArrayList<Integer> diceRoll) {
        this.diceRoll = diceRoll;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }
}
