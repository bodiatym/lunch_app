# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ::Profiles::EditService do
  subject(:service) do
    described_class.call(profile, updated_params)
    profile.reload
  end

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
      surname: 'a'
    }
  end

  it 'updates params' do
    expect { service }.to change(profile, :surname)
      .and change(profile, :phone)
      .to(updated_phone)
  end

  context 'with invalid params' do
    let(:updated_params) { invalid_params }

    it "doesn't update params" do
      expect { service }.not_to change(profile, :surname)
    end
  end
end
