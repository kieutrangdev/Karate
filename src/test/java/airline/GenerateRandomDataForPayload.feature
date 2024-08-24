Feature: Generate random data using Java faker library

#  Scenario: Create simple JSON Object - Data Faker
#    * def dataFaker =  Java.type("net.datafaker.Faker")
#    * def dataFakerObject = new dataFaker()
#    * def idValue = dataFakerObject.number().digits(5)
#    * def nameValue = dataFakerObject.name().fullName()
#    * set jsonObjectPayload
#    | path | value |
#    | id |  idValue|
#    |name | nameValue|
#    * print jsonObjectPayload


  Scenario: Create simple JSON Object - Data Faker - with custom class
    * def dataFaker =  Java.type("airline.utils.RandomDataGenerator")
    * def idValue = dataFaker.getRandomInterger(6)
    * def nameValue = dataFaker.getRandomFullName()
    * set jsonObjectPayload
      | path | value |
      | id |  idValue|
      |name | nameValue|
    * print jsonObjectPayload