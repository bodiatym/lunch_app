# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ::Orders::CreateService do
  let(:service) { described_class.call(user, params) }
  let(:user) { create(:user) }
  let(:meal) { create(:meal) }
  let(:params) do
    {
      meals: [meal]
    }
  end

  context 'with meals' do
    it 'returns true' do
      expect(service).to eq(true)
    end
  end

  context 'without meals' do
    let(:params) do
      {
        meals: []
      }
    end

    it "doesn't update params" do
      expect(service).to eq(false)
    end
  end
end
