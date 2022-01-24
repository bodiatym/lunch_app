# frozen_string_literal: true

class OrdersController < ApplicationController
  def create
    if Orders::CreateService.new(current_user, order_params).call
      redirect_to menus_path
      flash[:success] = t('flash.success')
    else
      redirect_to menu_path
    end
  end

  private

  def order_params
    params.require(:order).permit(meal_ids: [])
  end
end
