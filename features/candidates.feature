Feature: company-restclient candidate

  Scenario: Method candidates
    Given the buffer is empty
    When I insert:
    """
    G
    """
    And I execute company-restclient candidates command at current point
    Then company-restclient candidates are "("GET")"

  Scenario: Header candidates
    Given the buffer is empty
    When I insert:
    """
    GET http://example.com
    Coo
    """
    And I execute company-restclient candidates command at current point
    Then company-restclient candidates are "("cookie")"
