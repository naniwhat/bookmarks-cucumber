Feature: add
  
  Background:
  	Given Open the homepage
  	Given Search "this is a new item" and get 0 result

  Scenario: Add item as "this is a new item"
    When add "this is a new item" and "www.baidu.com" and click add
	Then search "this is a new item" again and get 1 result
