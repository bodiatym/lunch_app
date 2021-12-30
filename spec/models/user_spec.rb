# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#owner?' do
    let(:user) { create(:user) }
    let(:profile) { create(:profile, user: user) }

    context 'when user is owner' do
      it 'returns true' do
        expect(user.owner?(profile)).to eq(true)
      end
    end
  end
end
