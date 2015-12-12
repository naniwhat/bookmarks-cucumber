Feature: delete

  Background:
    Given Open the homepage
    Given Search "this is a del item" and get 1 result

  Scenario: Delete "this is a del item"
    When Delete "this is a del item" with ""
    Then Search "this is a del item" again and get 0 result

