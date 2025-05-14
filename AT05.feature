Feature: User Location Capture

  Scenario: Successfully transmit user location
    Given the user has enabled location access on their device
    When the system captures the user's location
    Then the system should successfully transmit the user's location

  Scenario: Failed to capture user location
    Given the user has disabled location access on their device
    When the system attempts to capture the user's location
    Then the system should display the message "Location access denied"

  Scenario: User location transmission failure due to network issue
    Given the user has enabled location access on their device
    When the system attempts to capture and transmit the user's location but encounters a network issue
    Then the system should display the message "Failed to transmit location"
