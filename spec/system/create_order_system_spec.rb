# frozen_string_literal: true

require 'rails_helper'

describe 'User make order', type: :feature do
  let(:user) { create(:user) }
  let(:menu) { create(:menu, :with_items) }

  before do
    login_as(user)

    visit new_menu_order_path(menu)

    select option, from: 'order[meal_ids][]', match: :first

    click_button 'Submit'
  end

  context 'when user has selected item' do
    let(:option) { 'test' }

    it 'shows success message' do
      expect(page).to have_content('Success')
    end
  end

  context 'when user has not selected item' do
    let(:option) { '' }

    it 'shows error message' do
      expect(page).to have_content('error')
    end
  end
end
