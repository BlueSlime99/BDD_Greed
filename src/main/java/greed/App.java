package greed;

import java.util.ArrayList;

public class App {

    public static void main(String[] args) {

        ArrayList<Integer> diceRoll = new ArrayList<>();

        diceRoll.add(6);
        diceRoll.add(6);
        diceRoll.add(6);
        diceRoll.add(6);
        diceRoll.add(6);
        diceRoll.add(6);
        Player player = new Player(diceRoll);
        Greed greed = new Greed(player);
        greed.play();

        System.out.println(player.getScore());

    }

}
