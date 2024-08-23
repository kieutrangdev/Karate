Feature: Get airline data

  Scenario: Get airline data using ID
    Given url 'https://api.instantwebtools.net/v1/airlines/73dd5420-3bf9-48f3-a0b6-17cf7aa61b19'
    When method get
    Then status 200

  Scenario: Get airline data using ID
    Given url 'https://api.instantwebtools.net'
    And path "v1/airlines"
    And path "73dd5420-3bf9-48f3-a0b6-17cf7aa61b19"
    When method get
    Then status 200
    And match responseStatus == 200
    And assert responseStatus == 200
    And print "response status code is  below - "
    And print responseStatus
