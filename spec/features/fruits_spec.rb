require 'spec_helper'

feature 'Manage Fruits' do
  scenario 'User can create and view list of fruits' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add fruit'
    fill_in 'Name', with: 'banana'
    fill_in 'Color', with: 'yellow'
    click_on 'Create fruit'
    expect(page).to have_content 'banana'
    expect(page).to have_content 'yellow'

  end
end