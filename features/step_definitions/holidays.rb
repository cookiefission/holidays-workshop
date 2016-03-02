#####
#Given
####

Given(/^I am on the home page$/) do
  visit('/')
end

####
#AND
####

And(/^I type a destination into the search bar$/) do
  fill_in 'search', with: 'algarve'
end

And(/^I click search$/) do
  click_button 'search-submit'
end

####
#Then
####

Then(/^I see the holidays table$/) do
  expect(page).to have_content('Location')
  expect(page).to have_content('Price')
end

Then(/^I see holiday data$/) do
  expect(page).to have_content('Algarve')
  expect(page).to have_content('Zante')
end

Then(/^I see expected search results$/) do
  expect(page).to have_content('Algarve')
  expect(page).to_not have_content('Zante')
end
