package airline.utils;

import net.datafaker.Faker;

public class RandomDataGenerator {
    static Faker faker = new Faker();
    public static String getRandomInterger(int size)
    {
        return faker.number().digits(size);
    }

    public static String getRandomFullName()
    {
        return faker.name().fullName();
    }
}
