Feature: UI Search

  Scenario: Search works
    Given open "https://www.google.com"
    When type "Portnov Computer School" in "name=q"
    And send key "KEY_ENTER" to "name=q"
    And wait for "id=result-stats" is visible
    Then assert text "results" presented in "id=result-stats"