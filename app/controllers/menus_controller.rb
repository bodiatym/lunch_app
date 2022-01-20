# frozen_string_literal: true

class MenusController < ApplicationController
  before_action :authenticate_user!
  before_action :set_menu, only: %i[show]
  before_action :authorize_menu!

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

  def authorize_menu!
    authorize(@menu || ::Menu)
  end
end
