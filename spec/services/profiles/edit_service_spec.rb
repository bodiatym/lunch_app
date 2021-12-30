# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ::Profiles::EditService, type: :model do
  describe '#call' do
    let(:profile)         { create(:profile) }
    let(:updated_surname) { 'Updated surname' }
    let(:updated_phone)   { '0987654321' }

    let(:updated_params) do
      {
        surname: updated_surname,
        phone: updated_phone
      }
    end
    let(:invalid_params) do
      {
        surname: '1',
        phone: 'abc'
      }
    end

    before do
      described_class.call(profile, updated_params)
    end

    context 'when params are valid' do
      it 'returns true' do
        expect(described_class.call(profile, updated_params)).to eq(true)
      end
    end

    context 'when params are not valid' do
      it 'returns false' do
        expect(described_class.call(profile, invalid_params)).to eq(false)
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
