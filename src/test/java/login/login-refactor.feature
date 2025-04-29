Feature: Login Refactor

  Background:
    * url 'https://reqres.in'
    * headers {x-api-key: 'reqres-free-v1'}
    * def credentials = read('login.json')
    * def tokenJson = read('token.json')
    * def token = "QpwL5tke4Pnpja7X4"

  Scenario: Refactor Login Successful
    Given path '/api/login'
    And request credentials
    When method post
    Then status 200
    And match response == tokenJson
    And match response.token == token