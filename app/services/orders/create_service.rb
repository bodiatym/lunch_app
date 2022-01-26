# frozen_string_literal: true

module Orders
  class CreateService < ApplicationService
    def initialize(current_user, params)
      super()
      @current_user = current_user
      @params = params
    end

    def call
      @current_user.orders.new(@params).save
    end
  end
end
