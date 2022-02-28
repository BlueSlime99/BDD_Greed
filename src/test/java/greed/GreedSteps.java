package greed;

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

    @When("player has rolled dice")
    public void playerHasRolledDice(List<Integer> list) {
        ArrayList<Integer> dice = new ArrayList<Integer>(list);
        context.player.setDiceRoll(dice);
        context.greed.play();
        System.out.println(context.player.getScore());

    }

    @Then("player's score should be {int}")
    public void playerScoreShouldBe(int score) {
        assertEquals(score, context.player.getScore());

    }



}
