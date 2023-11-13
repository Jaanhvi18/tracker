Feature: Profile_Nav

Scenario: Visiting the Profile page from the Profile
  Given There is a user with the email peterparker@mcu.com
  When the user creates a post with the media type 'game', called FNAF with the description "I played this game and it was scary"
  And the user creates a post with the media type 'game', called Minecraft with the description "I love block games"
  Then the user should have two posts