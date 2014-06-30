require 'spec_helper'

feature 'CRUD pictures' do
  scenario 'User can create a list of pictures' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a picture'
    fill_in 'Content', with: 'Cats'
    fill_in 'Size', with: 'Medium'
    click_on 'Add picture'
    expect(page).to have_content 'Cats'
    expect(page).to have_content 'Medium'
  end
end