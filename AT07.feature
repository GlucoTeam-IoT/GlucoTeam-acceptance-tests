Feature: About the Product Section

  Scenario: Display product description
    Given the user accesses the About the Product section
    When the page loads
    Then the user should see a brief description of the application's purpose

  Scenario: Show product features
    Given the user is on the About the Product section
    When the information is displayed
    Then the user should be able to read a list of core product functionalities

  Scenario: Ensure pre-usage understanding
    Given the user wants to understand the product before testing it
    When the user reads the About the Product section
    Then the content should explain how the product is used
