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
