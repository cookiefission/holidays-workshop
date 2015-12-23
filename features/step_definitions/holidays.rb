Given(/^there are holidays available$/) do
end

Then(/^I see the holidays listed$/) do
  expect(page).to have_content('Location')
  expect(page).to have_content('Price')
end
