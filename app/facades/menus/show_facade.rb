# frozen_string_literal: true

module Menus
  class ShowFacade
    attr_reader :menu

    delegate :day_name, :items, to: :menu, prefix: :menu
    delegate :main_course, :first_course, :drink_course, to: :menu_items, prefix: :menu

    def initialize(menu)
      @menu = menu.decorate
    end
  end
end
