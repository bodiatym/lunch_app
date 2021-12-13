# frozen_string_literal: true

class MenusController < ApplicationController
  before_action :set_menu

  def show; end

  def set_menu
    @menu = Menu.find_by!(id:params[:id])
  end

end
