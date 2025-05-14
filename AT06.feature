Feature: About Us Section

  Scenario: Display developer information
    Given the user accesses the About Us section
    When the page loads
    Then the user should see the names and roles of all team members

  Scenario: Developer experience visibility
    Given the user accesses the About Us section
    When the page loads
    Then the user should see information about the development experience of each team member

  Scenario: Page loads correctly
    Given the user navigates to the About Us section
    When the request is processed successfully
    Then the section content should render without errors
