Feature: Personalized Greeting
  In order to feel special
  As a site visitor
  I want to be greeted by name

  Scenario: Greet the visitor
    When I type "Michael" in the "Name" text field
    And I click the "Enter" button
    Then I should see an alert with the message: "Hello Michael!"
