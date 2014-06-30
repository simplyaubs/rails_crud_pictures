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

  scenario 'User can update a picture from list' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a picture'
    fill_in 'Content', with: 'Cats'
    fill_in 'Size', with: 'Medium'
    click_on 'Add picture'
    expect(page).to have_content 'Cats'
    expect(page).to have_content 'Medium'
    click_on 'Cats'
    expect(page).to have_content 'Cats'
    expect(page).to have_content 'Medium'
    click_on 'Edit'
    fill_in 'Content', with: 'Dogs'
    fill_in 'Size', with: 'Small'
    click_on 'Update picture'
    expect(page).to have_content 'Dogs'
    expect(page).to have_content 'Small'
    expect(page).to_not have_content 'Cats'
    expect(page).to_not have_content 'Medium'
  end

  scenario 'User can delete a picture from list' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a picture'
    fill_in 'Content', with: 'Cats'
    fill_in 'Size', with: 'Medium'
    click_on 'Add picture'
    expect(page).to have_content 'Cats'
    expect(page).to have_content 'Medium'
    click_on 'Cats'
    expect(page).to have_content 'Cats'
    expect(page).to have_content 'Medium'
    click_on 'Delete'
    expect(page).to_not have_content 'Cats'
    expect(page).to_not have_content 'Medium'
  end
end