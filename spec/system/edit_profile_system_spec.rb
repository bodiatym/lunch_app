# frozen_string_literal: true

require 'rails_helper'

describe 'User edit profile', type: :feature do
  let(:user)        { create(:user, :with_profile) }

  before do
    login_as(user)

    visit edit_users_profile_path
  end

  it 'shows success message if params correct' do
    fill_in      'Surname', with: 'Correct'
    click_button 'Save'
    expect(page).to have_content('Success')
  end

  it 'shows error message if params incorrect' do
    fill_in      'Surname', with: 'A'
    click_button 'Save'
    expect(page).to have_content('error')
  end
end
