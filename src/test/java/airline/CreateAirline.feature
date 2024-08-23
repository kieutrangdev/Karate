Feature: Create an airline
#  Scenario: Create an airline with hardcoded json payload
#    Given url 'https://api.instantwebtools.net/v1/airlines'
#    And request {"_id":"252d3bca-d9bb-476c-9a97-562d685e239c","name":"Sri Lankan Airways","country":"Sri Lanka","logo":"https:\/\/upload.wikimedia.org\/wikipedia\/en\/thumb\/9\/9b\/Qatar_Airways_Logo.svg\/sri_lanka.png","slogan":"From Sri Lanka","head_quaters":"Katunayake, Sri Lanka","website":"www.srilankaaairways.com","established":"1990"}
#    When method post
#    Then status 200
#
#  Scenario: Create an airline with multiline json payload
#    Given url 'https://api.instantwebtools.net/v1/airlines'
#    And request
#    """
#    {"_id":"252d3bca-d9bb-476c-9a97-562d685e239c","name":"Sri Lankan Airways","country":"Sri Lanka","logo":"https:\/\/upload.wikimedia.org\/wikipedia\/en\/thumb\/9\/9b\/Qatar_Airways_Logo.svg\/sri_lanka.png","slogan":"From Sri Lanka","head_quaters":"Katunayake, Sri Lanka","website":"www.srilankaaairways.com","established":"1990"}
#    """
#    When method post
#    Then status 200

  Scenario: Create an airline with created json payload
    Given url 'https://api.instantwebtools.net/v1/airlines'
    * def requestPayload = {}
    * requestPayload.id = "252d3bca-d9bb-476c-9a97-562d685e239c"
    * requestPayload.name = "Sri Lankan Airways"
    * requestPayload.country = "Sri Lanka"
    * requestPayload.logo = "https:\/\/upload.wikimedia.org\/wikipedia\/en\/thumb\/9\/9b\/Qatar_Airways_Logo.svg\/sri_lanka.png"
    * requestPayload.slogan = "From Sri Lanka"
    * requestPayload.head_quaters = "Katunayake, Sri Lanka"
    * requestPayload.website = "www.srilankaaairways.com"
    * requestPayload.established = 1990
    * print requestPayload
    And request requestPayload
    When method post
    Then status 200