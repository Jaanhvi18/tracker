Given("there is a valid user with the email peterparker@mcu.com") do
    @user = FactoryBot.create(:user, email: "peterparker@mcu.com")
end

When('I press {string}') do |button|
    puts page.body
    click_link button
    # Write code here that turns the phrase above into concrete actions
end


Given("I am on the home index of dashboards path") do
    visit root_path
end

Given('I am on the gallery page path') do
    visit root_path #to change
end

Given('I am on the profile page path') do
    visit profile_path
end

Then("I should see {string}") do |content|
    expect(page).to have_content(/#{content}/i)
end

Then("I should not see {string}") do |content|
    expect(page).not_to have_content(content)
end




