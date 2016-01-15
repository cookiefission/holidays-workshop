Given(/^I am on the home page$/) do
  visit('/')
end

Then(/^I see the holidays listed$/) do
  expect(page).to have_content('Location')
  expect(page).to have_content('Price')
end
