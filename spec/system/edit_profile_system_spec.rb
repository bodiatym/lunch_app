# frozen_string_literal: true

require 'rails_helper'

describe 'User edit profile', type: :feature do
  let(:user) { create(:user, :with_profile) }

  before do
    login_as(user)

    visit edit_users_profile_path

    fill_in 'Surname', with: surname

    click_button 'Save'
  end

  context 'with valid params' do
    let(:surname) { 'New surname' }

    it 'shows success message' do
      expect(page).to have_content('Success')
    end
  end

  context 'with invalid params' do
    let(:surname) { 'S' }

    it 'shows error message' do
      expect(page).to have_content('error')
    end
  end
end
