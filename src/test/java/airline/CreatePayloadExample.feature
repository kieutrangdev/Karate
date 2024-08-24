Feature: Create Nested Complex Json payloads
#
#  Scenario: Create simple JSON object
#    * set jsonObjectPayload
#      | path | value |
#      | id   | 12    |
#      | name | trang |
#    * print jsonObjectPayload

#  Scenario: Create nested Json object with variables
#  * def idValue = 12
#  * def nameValue = "Amod's Airlines"
#  * set jsonObjectPayload
#    | path | value |
#    | id   | idValue    |
#    | name | nameValue |
#  * print jsonObjectPayload

  Scenario: Create simple Array Object
    * set jsonObjectPayload
      | path | 0 | 1 |
      | id   | 12    | 31 |
      | name | "trang" | "test" |
    * print jsonObjectPayload

