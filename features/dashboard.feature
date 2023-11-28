Feature: Dashboard


Scenario: Visiting the profile page from the dashboards page
  Given there is a valid user with the email peterparker@mcu.com
  When I press "Go To Profile"
  Then I am on the profile page path 
  And I should see "Profile"
