package airline;

import com.intuit.karate.junit5.Karate;

public class AirlineRunner {
    @Karate.Test
    Karate testUsers() {
        return Karate.run("airline").relativeTo(getClass());
    }
}
