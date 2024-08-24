Feature: Create airline

#Scenario Outline: Create airline scenario outline
#  * def jsonDoc =
#  """
#  {
#    "name": "<name>",
#    "id": <id>,
#    "isManager":<isManage>
#  }
#  """
#  * print jsonDoc
#  Examples:
#    |read('payload/MOCK_DATA.json')|


  Scenario Outline: data - csv payload
    * print __row
    * def jsonUtils = Java.type("airline/utils/JsonUtils")
#    * def jsonObject = jsonUtils.removeNullKeys(__row)
    * def jsonObject = jsonUtils.removeNullKeys(karate.toString(__row))
    * print jsonObject
    * print __row
    Examples:
      |read('payload/MOCK_DATA.csv')|