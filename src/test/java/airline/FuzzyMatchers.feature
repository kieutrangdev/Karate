Feature: Fuzzy matchers examples


  Scenario: Basic example 3
      * def jsonResponse =
        """
        {
        "id": 123,
        "name": "Amod Mahajan",
        "manager": false,
        "skills": [
        "Java",
        "Testing"
        ]
        }
        """
      * match jsonResponse.skills == '#array'
    # số phần tử lớn hơn 0
      * match jsonResponse.skills == '#[]'
    # có 2 phần tử
      * match jsonResponse.skills == '#[2]'
    # các phần tử là string
      * match jsonResponse.skills == '#[] #string'
    # phần tử đầu tiên là java
      * match jsonResponse.skills == '#? _[0] == "Java"'
    # độ dài ptu đầu tiên là 4
      * match jsonResponse.skills == '#? _[0].length == 4'