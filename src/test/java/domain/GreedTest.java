package domain;


import greed.Greed;
import greed.Player;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Arrays;

import static org.junit.Assert.assertEquals;

public class GreedTest {
    Player player = new Player(new ArrayList<>());
    Greed greed = new Greed(player);

    @Test
    public void tripleOne() {
        assertEqual(1100, new ArrayList(Arrays.asList(1, 1, 1, 2, 3)));
    }

    @Test
    public void tripleTwo() {
        assertEqual(200, new ArrayList(Arrays.asList(4, 2, 2, 2, 3)));
    }

    @Test
    public void tripleThree() {
        assertEqual(300, new ArrayList(Arrays.asList(3, 3, 3, 2, 4)));
    }

    @Test
    public void tripleFour() {
        assertEqual(400, new ArrayList(Arrays.asList(4, 4, 4, 2, 3)));
    }

    @Test
    public void tripleFive() {
        assertEqual(550, new ArrayList(Arrays.asList(5, 5, 5, 2, 3)));
    }

    @Test
    public void tripleSix() {
        assertEqual(600, new ArrayList(Arrays.asList(6, 6, 6, 2, 3)));
    }

    @Test
    public void Four_of_a_kind() {assertEqual(1200, new ArrayList(Arrays.asList(6, 6, 6, 6, 3)));
    }

    @Test
    public void Five_of_a_kind() {
        assertEqual(4800, new ArrayList(Arrays.asList(6, 6, 6, 6, 6)));
    }

    @Test
    public void Six_of_a_kind() {
        assertEqual(38400, new ArrayList(Arrays.asList(6, 6, 6, 6, 6,6)));
    }





    private void assertEqual(int expected, ArrayList<Integer> diceRoll) {
        assertScore(expected,diceRoll);
    }

    private void assertScore(int score, ArrayList<Integer> diceRoll) {
        player.setDiceRoll(diceRoll);
        greed.play();
        assertEquals(score, player.getScore());
    }
}
