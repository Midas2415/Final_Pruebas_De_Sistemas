Feature: Get All topics

  Background:
    * url 'http://localhost:8080'

  Scenario: Fetch all topics

    Given path 'topic'
    When method GET
    Then status 200
    And match $ != null

  Scenario: Save new topics

    Given path 'topic'
    When request {"name": "Arduino DEV"}
    And method POST
    Then status 200
    And print 'Response is: ', response
    And match $ != null