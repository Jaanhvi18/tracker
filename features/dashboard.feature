Feature: Dashboard


Scenario: Visiting the profile page from the dashboards page
  Given there is a valid user with the email peterparker@mcu.com
  When I press "Go To Profile"
  Then I am on the profile page path 
  And I should see "Profile"





Scenario: Visiting the Gallery page
  Given I am on the gallery page path
  Then I should see "Gallery"
  And I should not see "Profile"

Scenario: Visiting the Profile page
  Given I am on the profile page path
  Then I should not see "Gallery"
  And I should see "Hi"