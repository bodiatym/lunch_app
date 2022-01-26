# frozen_string_literal: true

module Orders
  class CreateFacade < NewFacade
    delegate :persisted?, to: :order, prefix: :order

    def initialize(menu, current_user, order_params)
      super(menu)
      @current_user = current_user
      @order_params = order_params
    end

    def order
      @order ||= Orders::CreateService.new(@current_user, @order_params).call
    end
  end
end
