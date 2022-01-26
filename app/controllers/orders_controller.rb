# frozen_string_literal: true

class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_order!
  before_action :set_menu, only: %i[new create]

  def new
    @facade = ::Orders::NewFacade.new(@menu)
  end

  def create
    @facade = ::Orders::CreateFacade.new(@menu, current_user, order_params)

    return render :new unless @facade.order_persisted?

    flash[:success] = t('flash.success')

    redirect_to menus_path
  end

  private

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
