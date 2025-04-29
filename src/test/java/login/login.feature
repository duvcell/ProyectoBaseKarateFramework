Feature: Login

  @specificLocation
  Scenario: Login Successful
    Given url 'https://reqres.in'
    And path '/api/login'
    And headers {x-api-key: 'reqres-free-v1'}
    And request
    """
      {
          "email": "eve.holt@reqres.in",
          "password": "cityslicka"
      }
    """
    When method post
    Then status 200
    And match response ==
    """
      {
          "token": "QpwL5tke4Pnpja7X4"
      }
    """
    And match response.token == "QpwL5tke4Pnpja7X4"