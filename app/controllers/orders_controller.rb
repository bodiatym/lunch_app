# frozen_string_literal: true

class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_order!
  before_action :set_menu, only: %i[new create]
  before_action :set_new_facade, only: %i[new create]

  def new
    @order = Order.new
  end

  def create
    return render :new unless Orders::CreateService.new(current_user, order_params).call

    flash[:success] = t('flash.success')

    redirect_to menus_path
  end

  private

  def set_new_facade
    @facade = ::Orders::NewFacade.new(@menu)
  end

  def set_menu
    @menu = Menu.find(params[:menu_id])
  end

  def authorize_order!
    authorize(@order || ::Order)
  end

  def order_params
    params.require(:order).permit(:menu_id, meal_ids: [])
  end
end
