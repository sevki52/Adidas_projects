Feature: Adidas Order Placement Functionalities
  Agile Story: As a user, I should be able to place order from Website so that I can shop online

  Background:
    Given User is on the home page

  @parallel
  Scenario: Placing a successful order
    When User adds "Sony vaio i5" from "Laptops"
    And User adds "Dell i7 8gb" from "Laptops"
    And User navigates to cart and removes "Dell i7 8gb"
    And User clicks on place order
    And User fills the form for order and clicks on purchase button
    Then Order ID and order amount should be as expected

#  Scenario Outline: User checks different laptops can be added to cart <differentLaptops>
#    Then User adds "<differentLaptops>" from "Laptops"
#    Examples:
#      | differentLaptops    |
#      | Sony vaio i5        |
#      | Sony vaio i7        |
#      | MacBook air         |
#      | Dell i7 8gb         |
#      | 2017 Dell 15.6 Inch |
#      | MacBook Pro         |