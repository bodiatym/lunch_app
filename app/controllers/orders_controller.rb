# frozen_string_literal: true

class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_order!

  def create
    if Orders::CreateService.new(current_user, order_params).call
      redirect_to menus_path
      flash[:success] = t('flash.success')
    else
      redirect_to menu_path
    end
  end

  private

  def authorize_order!
    authorize(::Order)
  end

  def order_params
    params.require(:order).permit(meal_ids: [])
  end
end
