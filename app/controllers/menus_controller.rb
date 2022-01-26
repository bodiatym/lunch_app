# frozen_string_literal: true

class MenusController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_menu!


  def index
    @facade = ::Menus::IndexFacade.new
  end

  private

  def authorize_menu!
    authorize(::Menu)
  end
end
