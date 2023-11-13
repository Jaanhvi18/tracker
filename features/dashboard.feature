Feature: Dashboard


Scenario: Visiting the home index of the dashboards page
  Given I am on the home index of dashboards path
  Then I should see "Gallery"
  And I should see "Profile"

Scenario: Visiting the Gallery page
  Given I am on the gallery page path
  Then I should see "Gallery"
  And I should not see "Profile"

Scenario: Visiting the Profile page
  Given I am on the profile page path
  Then I should not see "Gallery"
  And I should see "Hi"