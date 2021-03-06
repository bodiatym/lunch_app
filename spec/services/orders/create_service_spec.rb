# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ::Orders::CreateService do
  let(:order) { described_class.call(user, params) }
  let(:user) { create(:user) }
  let(:meal) { create(:meal) }
  let(:params) do
    {
      meals: [meal]
    }
  end

  it 'creates order' do
    expect(order).to be_an_instance_of(Order)
  end

  it 'saves order' do
    expect(order).to be_persisted
  end

  context 'with invalid params' do
    let(:params) do
      {
        meals: []
      }
    end

    it 'order is not saved' do
      expect(order).not_to be_persisted
    end
  end
end
