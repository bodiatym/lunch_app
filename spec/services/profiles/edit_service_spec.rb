# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ::Profiles::EditService, type: :model do
  describe '#call' do
    let(:user) { create(:user) }
    let(:profile) { create(:profile, user: user) }
    let(:updated_surname) { 'Updated surname' }
    let(:updated_phone) { '0987654321' }
    let(:updated_params) do
      {
        surname: updated_surname,
        phone: updated_phone
      }
    end

    before do
      described_class.call(profile, updated_params)
    end

    context 'when param valid' do
      it 'returns true' do
        expect(described_class.call(profile, updated_params)).to eq(true)
      end
    end

    context 'when updated' do
      it 'change surname' do
        expect(profile.surname).to eq(updated_surname)
      end

      it 'change phone' do
        expect(profile.phone).to eq(updated_phone)
      end
    end
  end
end
