# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ::Profiles::EditService do
  subject(:service) do
    described_class.call(profile, params)
    profile.reload
  end

  let(:profile)         { create(:profile) }
  let(:updated_surname) { 'Updated surname' }
  let(:updated_phone)   { '0987654321' }

  let(:params) do
    {
      surname: updated_surname,
      phone:   updated_phone
    }
  end

  it 'updates params' do
    expect { service }.to change(profile, :surname).to(updated_surname)
  end

  context 'with invalid params' do
    let(:params) do
      {
        surname: 'b',
        phone: '123'
      }
    end

    it "doesn't update params" do
      expect { service }.not_to change(profile, :surname)
    end
  end
end
