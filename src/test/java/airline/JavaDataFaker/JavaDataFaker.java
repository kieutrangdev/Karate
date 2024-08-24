package airline.JavaDataFaker;

import ch.qos.logback.core.net.SyslogOutputStream;
import net.datafaker.Faker;

public class JavaDataFaker {
    public static void main(String[] args) {
        Faker faker = new Faker();
        System.out.println(faker.number().digits(5));
        System.out.println(faker.name().fullName());
    }
}
