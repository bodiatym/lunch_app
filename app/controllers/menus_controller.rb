# frozen_string_literal: true

class MenusController < ApplicationController
  before_action :set_menu, only: %i[show]

  def show
    @facade = ::Menus::ShowFacade.new(@menu)
  end

  def index
    @facade = ::Menus::IndexFacade.new
  end

  private

  def set_menu
    @menu = Menu.find(params[:id])
  end
end
