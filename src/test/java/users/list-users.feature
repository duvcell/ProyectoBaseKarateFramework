Feature: Get users list

  Scenario: Get users
    Given url 'https://reqres.in'
    And path '/api/users?page=2'
    #And param page = '2'
    And headers {x-api-key: 'reqres-free-v1'}
    When method get
    Then status 200
    * print response
    And match response.page == 1
    And match each response.data ==
    """
        {
            "id": "#number",
            "name": "#string",
            "year": "#number",
            "color": "#string",
            "pantone_value": "#string"
        }
    """

  Scenario Outline: Get users for page <id>
    Given url 'https://reqres.in'
    And path '/api/users?page=' + <id>
    #And param page = '2'
    And headers {x-api-key: 'reqres-free-v1'}
    When method get
    Then status 200
    * print response
    And match response.page == 1
    And match each response.data ==
    """
        {
            "id": "#number",
            "name": "#string",
            "year": "#number",
            "color": "#string",
            "pantone_value": "#string"
        }
    """
    Examples:
    |id|
    |1 |
    |2 |