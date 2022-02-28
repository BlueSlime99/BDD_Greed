package greed;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.assertEquals;

public class GreedSteps {

    ScenarioContext context = new ScenarioContext();


    @Given("dice with player")
    public void gameWithPlayer() {
        context.greed = new Greed(context.player);
    }

    @When("player rolls the dice {int} times")
    public boolean playerHasRolledDice(int listSize) {
       return context.player.diceRoll.size() == listSize;
    }

    @And("gets these dice rolls")
    public void getsTheseDiceRolls(List<Integer> list) {
        ArrayList<Integer> dice = new ArrayList<>(list);
        context.player.setDiceRoll(dice);
        context.greed.play();
        System.out.println(context.player.getScore());
    }

    @Then("player's score should be {int}")
    public void playerScoreShouldBe(int score) {
        assertEquals(score, context.player.getScore());
    }
}
