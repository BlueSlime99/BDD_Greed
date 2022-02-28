package greed;

import java.util.ArrayList;

public class ScenarioContext {
    Greed greed;
    final Player player;

    public ScenarioContext() {
        this.player = new Player(new ArrayList<>());
    }
}
